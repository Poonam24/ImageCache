//
//  ImageLoader.swift
//  Merchandising
//
//  Created by Poonam on 26/11/21.
//

import Foundation
import UIKit


//MARK: SOLID Principle applied, open for extension, closed for modification
public class Cache : NSCache<NSString, UIImage> {
    
   public static let shared = Cache()
    // making it singleto to be accessible across app
    override init() {}
    
     public func imageExistInCache(for imageID: String) -> Bool {
        var isExist : Bool = false
        if Cache.shared.object(forKey: imageID as NSString) != nil {
            isExist = true;
        }
        return isExist;
    }
    
     public func getImage(for url: String, completion: @escaping ((UIImage?,  Error?)->(Void))) {
            if let cachedImage = Cache.shared.object(forKey: url as NSString) {
                completion(cachedImage, nil)
            }
    }
    
     public func setImage(for imageID: String, image : UIImage) {
        Cache.shared.setObject(image, forKey: imageID as NSString)
    }
}

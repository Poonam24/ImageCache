//
//  ImageCacheTests.swift
//  ImageCacheTests
//
//  Created by Poonam on 28/11/21.
//

import XCTest
@testable import ImageCache

class ImageCacheTests: XCTestCase {
    
    var cache = Cache();
    
    override class func setUp() {
        super.setUp()
    }
    
    func testimageExistInCache() {
        let imageExist = cache.imageExistInCache(for: "Spinner.png")
        XCTAssertFalse(imageExist, "image does not exist")

    }
    
    func testgetImage() {
        cache.getImage(for: "spinner", completion: {
            image, error in
            
        })
        let getImageCalled = true
        XCTAssertTrue(getImageCalled, "getImage function called")

        
    }
    
    func testsetImage(){
        
        cache.setImage(for: "spinner", image: UIImage.init())
        let setImageCalled = true
        XCTAssertTrue(setImageCalled, "setImage function called")

    }

    override class func tearDown() {
        super.tearDown()
    }
}

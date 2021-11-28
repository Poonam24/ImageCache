# ImageCache
Framework to set and get image from cache after checking if the image exist

Below Commands help to create the framework

# Create Framework for Simulator 

xcodebuild archive \
-scheme ImageCache \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath './build/ImageCache.framework-iphoneos.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES


# Create Framework for Device 
xcodebuild archive \
-scheme ImageCache \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath './build/ImageCache.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

# Create XCFramework
xcodebuild -create-xcframework \
-framework './build/ImageCache.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/ImageCache.framework' \
-framework './build/ImageCache.framework-iphoneos.xcarchive/Products/Library/Frameworks/ImageCache.framework' \
-output './build/ImageCache.xcframework'



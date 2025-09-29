// xcodebuild archive \
//  -workspace ApPrebidModule.xcworkspace \
//  -scheme ApPrebidModule \
//  -destination "generic/platform=iOS" \
//  -archivePath "./build/iOS" \
//  -sdk iphoneos \
//  SKIP_INSTALL=NO \
//  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

//  xcodebuild archive \
//  -workspace ApPrebidModule.xcworkspace \
//  -scheme ApPrebidModule \
//  -destination "generic/platform=iOS Simulator" \
//  -archivePath "./build/iOSSimulator" \
//  -sdk iphonesimulator \
//  SKIP_INSTALL=NO \
//  BUILD_LIBRARY_FOR_DISTRIBUTION=YES


//  xcodebuild -create-xcframework \
//      -framework "./build/iOS.xcarchive/Products/Library/Frameworks/ApPrebidModule.framework" \
//      -framework "./build/iOSSimulator.xcarchive/Products/Library/Frameworks/ApPrebidModule.framework" \
//      -output "./build/ApPrebidModule.xcframework"


//  zip -r "./build/ApPrebidModule.xcframework.zip" "./build/ApPrebidModule.xcframework"


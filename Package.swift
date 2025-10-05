// swift-tools-version:5.9

import PackageDescription
let package = Package(
    name: "ApPrebidModule",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ApiOSPrebidSDK",
            targets: ["ApPrebidModule"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.13.0"),
        .package(url: "https://github.com/prebid/prebid-mobile-ios.git", from: "2.3.0")
    ],
    targets: [
        .binaryTarget(
           name: "ApPrebidModule",
           url: "https://github.com/adpushup/ApiOSPrebidSDK/releases/download/1.0.3/ApPrebidModule.xcframework.zip",
           checksum: "1f68ccaac3cd1e36e6e9fdc1ff97007df877e2a203f6a89878b17f964c3594ba"
       ),
       .target(
            name: "ApiOSPrebidSDK",
            dependencies: [
               .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
               .product(name: "PrebidMobile", package: "prebid-mobile-ios"),
               "ApPrebidModule"
           ]
        ),
    ]
)
// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Common",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Common",
            targets: ["CommonTargets"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Common",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common/releases/download/0.0.71/shared.xcframework.zip",
            checksum: "29d59deb447096f2adebf16111c8af2757829f9789f3117bfb1083c43f5bcdae"
        ),
        .target(
            name: "CommonTargets",
            dependencies: [
                .target(name: "Common")
            ],
            path: "Sources"
        )
    ]
)

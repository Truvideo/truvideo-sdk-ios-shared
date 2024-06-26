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
            url: "https://github.com/Truvideo/truvideo-sdk-ios-common/releases/download/0.0.72/shared.xcframework.zip",
            checksum: "7776a23f0a2fc8c6c954483d2856e9ec7aad6d641d5ef09c492497bb24170183"
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

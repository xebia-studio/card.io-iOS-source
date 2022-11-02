// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CardIO",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "CardIO", targets: ["CardIO"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "CardIO", path: "xcframeworks/CardIO.xcframework")
    ]
)

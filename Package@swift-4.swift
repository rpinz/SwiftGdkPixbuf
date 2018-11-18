// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "GdkPixbuf",
    products: [
        .library(
            name: "GdkPixbuf",
            targets: ["GdkPixbuf"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/rpinz/CGdkPixbuf",
            .branch("master")),
        .package(
            url: "https://github.com/rpinz/SwiftGIO",
            .branch("master")),
        .package(
            url: "https://github.com/rpinz/SwiftGModule",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "GdkPixbuf",
            dependencies: ["GIO", "GModule"],
            path: "Sources"),
        .testTarget(
            name: "GdkPixbufTests",
            dependencies: ["GdkPixbuf"])
    ],
    swiftLanguageVersions: [4]
)

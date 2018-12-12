// swift-tools-version:4.2

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
            url: "https://github.com/rpinz/SwiftGIO",
            .branch("master")),
        .package(
            url: "https://github.com/rpinz/SwiftGModule",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "GdkPixbuf",
            dependencies: ["CGdkPixbuf","GIO","GModule"],
            path: "Sources"),
        .testTarget(
            name: "GdkPixbufTests",
            dependencies: ["GdkPixbuf"]),
        .systemLibrary(
            name: "CGdkPixbuf",
            path: "Library/CGdkPixbuf",
            pkgConfig: "gdk-pixbuf-2.0",
            providers: [
                .brew(["libgdk-pixbuf2.0"]),
                .apt(["libgdk-pixbuf2.0-dev"])
            ])
    ],
    swiftLanguageVersions: [
        .v4_2,
        .version("5")
    ]
)

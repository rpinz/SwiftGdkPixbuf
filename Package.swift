import PackageDescription

let package = Package(
    name: "GdkPixbuf",
    dependencies: [
        .Package(url: "https://github.com/rpinz/CGdkPixbuf", majorVersion: 1),
        .Package(url: "https://github.com/rpinz/SwiftGIO", majorVersion: 2),
        .Package(url: "https://github.com/rpinz/SwiftGModule", majorVersion: 2)
    ],
    swiftLanguageVersions: [3, 4]
)

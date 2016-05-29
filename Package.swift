import PackageDescription

let package = Package(
    name: "SwiftGdkPixbuf",
    dependencies: [
        .Package(url: "https://github.com/rhx/SwiftGIO.git", majorVersion: 2),
        .Package(url: "https://github.com/rhx/SwiftGModule.git", majorVersion: 2)
    ]
)

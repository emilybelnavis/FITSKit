// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "FITSKit",
    platforms: [.macOS(.v27)],
    products: [
        .library(name: "FITSKit", targets: ["FITSKit"])
    ],
    dependencies: [],
    targets: [
        .target(name: "FITSKit"),
        .testTarget(name: "FITSKitTests", dependencies: ["FITSKit"])
    ]
)

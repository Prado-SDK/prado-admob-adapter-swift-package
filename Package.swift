// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PradoAdmobAdapter",
    platforms: [
        .iOS(.v12) // or your minimum supported version
    ],
    products: [
        .library(
            name: "PradoAdmobAdapter",
            targets: ["PradoAdmobAdapter"]
        )
    ],
    dependencies: [
        // Dependency on core SDK
        .package(url: "https://github.com/Prado-SDK/core-sdk-swift-package.git", from: "10.1.3")
    ],
    targets: [
        .binaryTarget(
            name: "PradoAdmobAdapter",
            path: "XCFramework/PradoAdmobAdapter.xcframework"
        )
    ]
)

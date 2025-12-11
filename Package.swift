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
            targets: ["PradoAdmobAdapterTarget"]
        )
    ],
    dependencies: [
        // Dependency on core SDK
        .package(url: "https://github.com/Prado-SDK/prado-sdk-swift-package.git", from: "10.1.3")
    ],
    targets: [
        .target(
            name: "PradoAdmobAdapterTarget",
            dependencies: [
                .product(name: "PradoSDK", package: "prado-sdk-swift-package"),
                "PradoAdmobAdapter"
            ]
        ),
        .binaryTarget(
            name: "PradoAdmobAdapter",
            path: "XCFramework/PradoAdmobAdapter.xcframework"
        )
    ]
)

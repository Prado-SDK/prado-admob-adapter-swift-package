// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PradoAdmobAdapter",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "PradoAdmobAdapter",
            targets: ["PradoAdmobAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Prado-SDK/prado-sdk-swift-package.git", from: "10.1.5"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", "12.0.0"..<"14.0.0")
    ],
    targets: [
        .target(
            name: "PradoAdmobAdapterTarget",
            dependencies: [
                .product(name: "PradoSDK", package: "prado-sdk-swift-package"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                "PradoAdmobAdapter"
            ]
        ),
        .binaryTarget(
            name: "PradoAdmobAdapter",
            url: "https://github.com/Prado-SDK/prado-ios-frameworks/raw/refs/heads/main/mediation/admob/2.0.1/PradoAdmobAdapter.zip",
            checksum: "5400e9af8675512ede4bf092afa9b4a524c85600029dff817f65788888118efb"
        )
    ]
)

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
            url: "https://github.com/Prado-SDK/prado-ios-frameworks/raw/refs/heads/main/mediation/admob/staging/2.0.2/PradoAdmobAdapter.zip",
            checksum: "851446377fc7e94227cabfbc526afb7139edcd6df3db2cd21bf8d5c05a1e129f"
        )
    ]
)

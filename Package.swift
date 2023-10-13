// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.8.0-13"

let package = Package(
    name: "BNBNeurobeautyMakeup",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBNeurobeautyMakeup",
            targets: [
                "BNBNeurobeautyMakeup_Target",
                "BNBNeurobeautyMakeup_BNBNeurobeautyMakeup_Target",
                "BNBNeurobeautyMakeup_BNBNeurobeautyMakeup_Target",
                "BNBNeurobeautyMakeup_BNBNeurobeautyMakeup_Target",
                "BNBNeurobeautyMakeup_BNBNeurobeautyMakeup_Target"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/PiotrBanuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/PiotrBanuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBNeurobeautyMakeup_Target",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.8.0-58-g46079e7d74/BNBNeurobeautyMakeup.zip",
            checksum: "1c959c056d30fa942bea6077a250b6477b01404b7598e5164818c1045d0463ad"
        ),
        .target(
            name: "BNBNeurobeautyMakeup_BNBSdkCore_Target",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBNeurobeautyMakeup_BNBEffectPlayer_Target",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBNeurobeautyMakeup_BNBScripting_Target",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
        .target(
            name: "BNBNeurobeautyMakeup_BNBFaceTracker_Target",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
    ]
)

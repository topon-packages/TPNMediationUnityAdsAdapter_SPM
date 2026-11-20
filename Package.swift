// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationUnityAdsAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TPNMediationUnityAdsAdapter",
            targets: ["TPNMediationUnityAdsAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package.git", exact: "4.22.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkUnityAdsAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkUnityAdsAdapter/42200.2.10/AnyThinkUnityAdsAdapter-42200.2.10.zip",
            checksum: "70622ebd7323b9e9fb4515b99007f1ff3a3d29c9c7b82799639065e063eb97ab"
        ),
        .target(
            name: "TPNMediationUnityAdsAdapterTarget",
            dependencies: [
                "AnyThinkUnityAdsAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "UnityAds", package: "Unity-Ads-Swift-Package")
            ],
            path: "Sources/TPNMediationUnityAdsAdapterTarget"
        )
    ]
)
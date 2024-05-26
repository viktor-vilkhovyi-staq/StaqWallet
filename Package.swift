// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StaqWallet",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(name: "StaqWallet", targets: ["StaqWallet"]),
    ],
    dependencies: [
        .package(url: "https://github.com/staqio/TrustlessSDK", branch: "feat/dev-finlab"),
    ],
    targets: [
        .binaryTarget(name: "StaqWallet", path: "./Sources/StaqWallet.xcframework"),
    ]
)

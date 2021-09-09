// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [.iOS(.v10), .macOS(.v10_11)],
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"]),
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/webrtc-sdk/Specs/releases/download/92.4515.01/WebRTC.xcframework.zip",
            checksum: "e0c4ae110831a74ef09325ba982d184a91d18ffebba4c5422584188eb9f7b423"
        ),
    ]
)

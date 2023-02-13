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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/104.5112.11/WebRTC.xcframework.zip",
            checksum: "e6427b81e3cce09a14b9af507c9861bfb870d6ee6d1dab6a994a1e6bd91b5082"
        ),
    ]
)

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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/92.4515.05/WebRTC.xcframework.zip",
            checksum: "a82a76c8ec39621b6c5911e2dc2b4d9b47f837cefa7496523e34b46f217b8d9f"
        ),
    ]
)

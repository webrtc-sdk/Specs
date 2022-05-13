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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/97.4692.04/WebRTC.xcframework.zip",
            checksum: "589ff2844821f5f59f5bbd0a7203d3d4a3829808192e2eb46d973c78b87c33fe"
        ),
    ]
)

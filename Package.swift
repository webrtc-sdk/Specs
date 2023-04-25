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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/104.5112.16/WebRTC.xcframework.zip",
            checksum: "bb4c3df0320e08b3eff547983fc68ccfc47c259363a327deabfb0b087144b646"
        ),
    ]
)

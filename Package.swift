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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/114.5735.03/WebRTC.xcframework.zip",
            checksum: "5ac8917188ae3bb0e3cb5fbfe03fcaa99f42db0e02cd551a5b7d169af1270293"
        ),
    ]
)

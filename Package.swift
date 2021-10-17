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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/92.4515.09/WebRTC.xcframework.zip",
            checksum: "bfd51124365b23932766adbf63c1b4baa8235d3d9f32f23ad91f1bbf58a1786d"
        ),
    ]
)

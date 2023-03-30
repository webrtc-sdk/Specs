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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/104.5112.13/WebRTC.xcframework.zip",
            checksum: "690c4fd53e8b2d32861e03f1b500fe3dde153af3d4d37dca253c571c5b382617"
        ),
    ]
)

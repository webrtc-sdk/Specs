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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/93.4577.01/WebRTC.xcframework.zip",
            checksum: "927e3b6754d2432629eba916a17b46e072b403571b51dac6a9e0817f794d218e"
        ),
    ]
)

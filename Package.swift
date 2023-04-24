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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/104.5112.15/WebRTC.xcframework.zip",
            checksum: "2952c8bdf0b02adbf8018f285069aead62e1aaed751e1036775ba0f87ab20ce1"
        ),
    ]
)

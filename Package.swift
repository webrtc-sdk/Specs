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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/104.5112.03/WebRTC.xcframework.zip",
            checksum: "11d14bb2af9aba65d5a5dcadd1bc4ac7a4e461b2eaddea1929db92e4d7332093"
        ),
    ]
)

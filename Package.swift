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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/92.4515.07/WebRTC.xcframework.zip",
            checksum: "7269c6bc6657cb7414df3917ae5dcae64d7dcf152dbf0358f44546d4bb1aa4b0"
        ),
    ]
)

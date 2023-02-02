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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/104.5112.10/WebRTC.xcframework.zip",
            checksum: "7ef6bcac5b2f6d9b264c5454b74c6caf8e88958510789422cee1e8b5c9d953bc"
        ),
    ]
)

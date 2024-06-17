// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [.iOS(.v12), .macOS(.v10_15)],
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/webrtc-sdk/Specs/releases/download/125.6422.01/WebRTC.xcframework.zip",
            checksum: "523bc90bfb32155dcc45f2c693b0e5c7c7f0d55ee380a8a125e4273e5f636bae"
        ),
    ]
)

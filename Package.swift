// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [.iOS(.v13), .macOS(.v10_14)],
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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/125.6422.02/WebRTC.xcframework.zip",
            checksum: "8e7c2c21048ab441b8d60a271040d988e3fce3a2b8e2fa0516d69efe3ff8076f"
        ),
    ]
)

// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [.iOS(.v12), .macOS(.v10_13)],
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"]),
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/webrtc-sdk/Specs/releases/download/114.5735.08/WebRTC.xcframework.zip",
            checksum: "3bf0e56961f2ccf5e1516f9ca556f868e9616e603a644345f57ea83d69a651ce"
        ),
    ]
)

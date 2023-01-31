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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/104.5112.09/WebRTC.xcframework.zip",
            checksum: "60355f21ef9f80a05e9ff75a56e6391be73453ef1ef60729d7798f110da8a0e2"
        ),
    ]
)

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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/104.5112.05/WebRTC.xcframework.zip",
            checksum: "f3319e79656a671b53baba9f20389022265431948adc6238e5e4a090afef65aa"
        ),
    ]
)

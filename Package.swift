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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/92.4515.06/WebRTC.xcframework.zip",
            checksum: "87081716878c3d216787886ae1be1d9a2a5a133fdc8f8669f3e80aff3f851198"
        ),
    ]
)

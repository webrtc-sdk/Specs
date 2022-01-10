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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/93.4577.02/WebRTC.xcframework.zip",
            checksum: "1b88bb29dfd6070325488d104a3508d38031038d05c0c8f9371bc23b793a2acd"
        ),
    ]
)

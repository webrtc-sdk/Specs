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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/104.5112.08-beta/WebRTC.xcframework.zip",
            checksum: "436f4616f3da71f8a237c90d6c6ce297fc08e3ae5eb8812d95bf76c974385b7f"
        ),
    ]
)

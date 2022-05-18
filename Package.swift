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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/97.4692.05/WebRTC.xcframework.zip",
            checksum: "434c8be57892e9f4dbe8fa7afe188d2dd1ad31d15ad7887d4f5ba4bba7f476c3"
        ),
    ]
)

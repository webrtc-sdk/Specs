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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/92.4515.08/WebRTC.xcframework.zip",
            checksum: "9364c80b6d741ab6b7d4f87baac9177921fc782c64d347c5a8d0de4a43e1a0d6"
        ),
    ]
)

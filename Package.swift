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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/92.4515.04/WebRTC.xcframework.zip",
            checksum: "949ef384dc63a6b61709c0b101135e7efd8462742fcae18990e36eb26911109f"
        ),
    ]
)

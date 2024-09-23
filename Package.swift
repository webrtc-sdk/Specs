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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/125.6422.05/WebRTC.xcframework.zip",
            checksum: "c1245206c926e48fca4d1c917981a71650bd44f806e40900fa3947f7bfefe40f"
        ),
    ]
)

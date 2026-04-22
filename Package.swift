// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .macCatalyst(.v14),
        .tvOS(.v17),
        .visionOS(.v26),
    ],
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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/144.7559.04/WebRTC.xcframework.zip",
            checksum: "db37b36c8b39be357fce93f9eeeebfe364fe92a02c702e22b83ac69db7b89851"
        ),
    ]
)

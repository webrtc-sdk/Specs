// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .macCatalyst(.v14),
        .tvOS(.v17),
        .visionOS(.v2),
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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/137.7151.09/WebRTC.xcframework.zip",
            checksum: "2e6c9ee94ff109f4a9e8a7c0680fd6a3d7f88efc6abeedb1414973eca7e41b0c"
        ),
    ]
)

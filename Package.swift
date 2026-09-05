// swift-tools-version:5.9
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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/144.7559.15/WebRTC.xcframework.zip",
            checksum: "a17a6688e208255b70381926110526593ba626e033cf88c9ed4a7b618f98eb8a"
        ),
    ]
)

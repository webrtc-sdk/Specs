// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [
        .iOS(.v13),
        .tvOS(.v17),
        .macOS(.v10_15),
        .macCatalyst(.v14),
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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/125.6422.07/WebRTC.xcframework.zip",
            checksum: "827cc2f508c341367c9b0e4f6def46e5f6834251082047d5d1da5bc8fd379263"
        ),
    ]
)

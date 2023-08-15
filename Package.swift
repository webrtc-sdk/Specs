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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/114.5735.03/WebRTC.xcframework.zip",
            checksum: "ac21fd7eb827c92b0c8ff3f6b3595328080cd451c912d9a350a384667c8039b1"
        ),
    ]
)

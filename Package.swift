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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/104.5112.12/WebRTC.xcframework.zip",
            checksum: "d3f6739dce52099fe047b0dbbf48080344231a74ff38e8fec73b3bbb9b5c1d01"
        ),
    ]
)

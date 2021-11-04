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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/92.4515.11/WebRTC.xcframework.zip",
            checksum: "59411d95cb9343bda232cb081aa2c01cf62fafbcdfc04a73ecbbbabbb8e02d1d"
        ),
    ]
)

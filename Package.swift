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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/97.4692.07/WebRTC.xcframework.zip",
            checksum: "baef8506495edc0af624a4488d1296ad93a848cdf6b69c863149df468184db0d"
        ),
    ]
)

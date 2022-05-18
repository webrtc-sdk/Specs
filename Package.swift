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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/97.4692.05/WebRTC.xcframework.zip",
            checksum: "4bdc11be9de8c08aa85c3a0c2f8c3259021fa1556bc270916a329c6a4b84155d"
        ),
    ]
)

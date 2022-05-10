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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/97.4692.03/WebRTC.xcframework.zip",
            checksum: "1b99d68330ef66ebc18c9d319c933f0e42c67ec3b7bafa3cad1f77b864a63830"
        ),
    ]
)

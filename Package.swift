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
            checksum: "0ca533b6fd8d03771156cbf27d8d19e7bb16ad9cf284fd84b9d46be10cb771b0"
        ),
    ]
)

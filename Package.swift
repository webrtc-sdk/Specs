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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/104.5112.14/WebRTC.xcframework.zip",
            checksum: "92e66ea3f100d263816aace8e6ec7e7b7c139eee8ce1fd02e0e88b65d788c9eb"
        ),
    ]
)

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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/114.5735.06/WebRTC.xcframework.zip",
            checksum: "db007908eebe8f5f01aa4e9bd147bada25188ad2bf345a131aecbdfe4bd473bb"
        ),
    ]
)

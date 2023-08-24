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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/114.5735.04/WebRTC.xcframework.zip",
            checksum: "60d10636668e40b6152ff2fb94f775df154011bf822874b3bf8643f1dcbafd7e"
        ),
    ]
)

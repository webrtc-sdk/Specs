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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/114.5735.01/WebRTC.xcframework.zip",
            checksum: "4540b9340aa68f64092aaef49968b8075d1cbd0e03068ddd6f7a088f9ca443a8"
        ),
    ]
)

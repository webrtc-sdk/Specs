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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/114.5735.05/WebRTC.xcframework.zip",
            checksum: "1ee141a3b7a9e32d6fe64dadcbc5799d0387f1ae79b7ebd5d46571767970d4d2"
        ),
    ]
)

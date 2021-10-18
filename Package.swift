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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/92.4515.10/WebRTC.xcframework.zip",
            checksum: "795927d82a24cfe2f08915771c50147ec1d2204411c311c14a1a1ca87784111d"
        ),
    ]
)

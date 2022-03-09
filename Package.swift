// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [.iOS(.v10), .macOS(.v10_11)],
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"],
            type: .dynamic,
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/webrtc-sdk/Specs/releases/download/97.4692.02/WebRTC.xcframework.zip",
            checksum: "dc560311878132c065f94edeb18545f33ef9f1b65e0e669c527550842943c366"
        ),
    ]
)

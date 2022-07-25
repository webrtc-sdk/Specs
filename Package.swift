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
            url: "https://github.com/webrtc-sdk/Specs/releases/download/104.5112.01/WebRTC.xcframework.zip",
            checksum: "229d6520f298bbabe772a5fcfd8def5df6ed67cf3eefe3ce696a110bd9bfc937"
        ),
    ]
)

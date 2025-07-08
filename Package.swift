// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .macCatalyst(.v14),
        .tvOS(.v17),
        .visionOS(.v1),
    ],
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/webrtc-sdk/Specs/releases/download/137.7151.00/WebRTC.xcframework.zip",
            checksum: "f2da959264b6e28ab2bb1efd59966cddd795d81166df54b5725ad83cb18a4964"
        ),
    ]
)

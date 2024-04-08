// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WebRTC",
    platforms: [.iOS(.v12), .macOS(.v10_13)],
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"]),
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/webrtc-sdk/Specs/releases/download/114.5735.09/WebRTC.xcframework.zip",
            checksum: "23c98f013e90133ab3ea8dff14de7cc8e53e0ea293f3453e129a41ba05cc49a4"
        ),
    ]
)

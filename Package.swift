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
            url: "https://storage.unxpected.co.jp/public/static-webrtc/002/WebRTC.xcframework.zip",
            checksum: "6a81743c9360e247d0e552109474687a35ac1aa4d8a1da5af8a5c26d2d714d59"
            // linkerSettings: [
            //   .unsafeFlags(["-ObjC"])
            // ]
        ),
    ]
)

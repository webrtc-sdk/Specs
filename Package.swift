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
            url: "https://storage.unxpected.co.jp/public/WebRTC.xcframework.zip",
            checksum: "1a3db7d51c39a4cc22553d6b1e3906bd42c5c974aefb0071dcf625c881d99b6c"
        ),
    ]
)

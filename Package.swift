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
            url: "https://storage.unxpected.co.jp/public/temp/WebRTC.xcframework.zip",
            checksum: "b455d1b9d224f78456d36c01f837e21fb31e0f1f5db414b802c65913c51722ee"
        ),
    ]
)

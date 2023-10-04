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
            url: "https://storage.unxpected.co.jp/public/static-webrtc/001/WebRTC.xcframework.zip",
            checksum: "5df1b1c12fa5cb68096f80abad2712d4174bb270c13d90fd8c768a87ac90db1d"
            // linkerSettings: [
            //   .unsafeFlags(["-ObjC"])
            // ]
        ),
    ]
)

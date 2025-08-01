// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "QRCodeReader",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_11),
    ],
    products: [
        .library(name: "QRCodeReader", targets: ["QRCodeReader"]),
    ],
    dependencies: [
        .package(url: "https://github.com/dnpp73/GPUCIImageView", .upToNextMinor(from: "0.1.1")),
        .package(url: "https://github.com/p-x9/SimpleCamera", .upToNextMinor(from: "0.3.3")),
    ],
    targets: [
        .target(
            name: "QRCodeReader",
            dependencies: ["GPUCIImageView", "SimpleCamera"],
            path: "Sources"
        ),
    ]
)

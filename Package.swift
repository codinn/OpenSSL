// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenSSL",
    products: [
        .library(
            name: "OpenSSL",
            targets: ["OpenSSL"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "OpenSSL",
            url: "https://codinn.com/download/OpenSSL.xcframework.zip",
            checksum: "1fc651cfb6e6eaf8d3226e9104aeeddebb0f31801de1b4ed7b9d0fe6f9c0c2ac"
        ),
    ]
)

/* 
xcframework successfully written out to: frameworks/OpenSSL.xcframework
1fc651cfb6e6eaf8d3226e9104aeeddebb0f31801de1b4ed7b9d0fe6f9c0c2ac
*/

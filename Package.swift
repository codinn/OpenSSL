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
            url: "https://github.com/codinn/openssl-apple/releases/download/1.1.1h/OpenSSL.xcframework.zip",
            checksum: "83e4dfd08a48a6015ac9f7e355b6e549a787380961cbd323a861cc82bb771e39"
        ),
    ]
)

/* 
xcframework successfully written out to: frameworks/OpenSSL.xcframework
83e4dfd08a48a6015ac9f7e355b6e549a787380961cbd323a861cc82bb771e39
*/

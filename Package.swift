// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "openssl-apple",
    products: [
        .library(
            name: "openssl-apple",
            targets: ["openssl-apple"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "openssl-apple",
            url: "https://github.com/codinn/openssl-apple/releases/download/1.1.1h-compact/openssl-apple.xcframework.zip",
            checksum: "9751f1489bd8ae2a40158ce00bba1dcfa55a0ef2aa24c76b10d82c06b11de87f"
        ),
    ]
)

/* 
xcframework successfully written out to: frameworks/OpenSSL.xcframework
83e4dfd08a48a6015ac9f7e355b6e549a787380961cbd323a861cc82bb771e39
*/

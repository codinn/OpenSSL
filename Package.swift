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
            url: "https://github.com/codinn/openssl-apple/releases/download/1.1.1h/openssl-apple.xcframework.zip",
            checksum: "e8af70f25a44ac11a379510cd2a2a07c1a84ff5ebc49500a83fe6a70a298c365"
        ),
    ]
)

/* 
xcframework successfully written out to: frameworks/openssl-apple.xcframework
e8af70f25a44ac11a379510cd2a2a07c1a84ff5ebc49500a83fe6a70a298c365
*/

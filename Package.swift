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
            checksum: "e78ff6d0df0d24be5149ddef0d55e52ee1a267e067d74c94a448cd2460c55498"
        ),
    ]
)

/* 
xcframework successfully written out to: frameworks/OpenSSL.xcframework
e78ff6d0df0d24be5149ddef0d55e52ee1a267e067d74c94a448cd2460c55498
*/

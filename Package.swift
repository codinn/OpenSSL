// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenSSL",
    products: [
        // openssl.xcframework
        .library(
            name: "openssl",
            targets: ["openssl"]),
        // OpenSSL libray, can be imported by swift
        .library(
            name: "OpenSSL",
            targets: ["OpenSSL", "openssl"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "openssl",
            url: "https://github.com/codinn/OpenSSL/releases/download/3.0.14/openssl.xcframework.zip",
            checksum: "ef708810f057f5c1ce379be7d156200d9b02b06a5679a549ef547dae86cf40a5"
        ),
        .target(name: "OpenSSL",
                dependencies: ["openssl"])
    ]
)

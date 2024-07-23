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
            url: "https://github.com/codinn/OpenSSL/releases/download/3.0.14-p1/openssl.xcframework.zip",
            checksum: "fa6cdf83eb7996890bdc08f183e0ad6b24f29dcb78520cce241157b4ce1586bc"
        ),
        .target(name: "OpenSSL",
                dependencies: ["openssl"])
    ]
)

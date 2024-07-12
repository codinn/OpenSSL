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
            checksum: "d63947127ead98512975e52f08a7b55c8ac17726c614096862b2953f00d4f7b9"
        ),
        .target(name: "OpenSSL",
                dependencies: ["openssl"])
    ]
)

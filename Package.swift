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
            url: "https://codinn.com/download/openssl.xcframework.zip",
            checksum: "db6fce0262b9d6cc10f2312b8c88c08d9127ff083953d02a84b544d73732bc5c"
        ),
        .target(name: "OpenSSL",
                dependencies: ["openssl"])
    ]
)

/* 
xcframework successfully written out to: frameworks/openssl.xcframework
db6fce0262b9d6cc10f2312b8c88c08d9127ff083953d02a84b544d73732bc5c
*/

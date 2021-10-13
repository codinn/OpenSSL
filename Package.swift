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
            checksum: "ac9be8cdb0845c6d89653a628f507026dec4b6902528bd89532c41ec2344d0d7"
        ),
        .target(name: "OpenSSL",
                dependencies: ["openssl"])
    ]
)

/* 
xcframework successfully written out to: frameworks/openssl.xcframework
ac9be8cdb0845c6d89653a628f507026dec4b6902528bd89532c41ec2344d0d7
*/

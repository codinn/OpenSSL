// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "openssl-apple",
    products: [
        .library(
            name: "openssl-apple",
            targets: ["openssl"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "openssl",
            url: "https://github.com/passepartoutvpn/openssl-apple/releases/download/3.2.105/openssl.xcframework.zip",
            checksum: "1a78fcc49e0c902bdc7e68882a5c8ba3fb91f12d3a574c2734ba358551d557ca"),

        // local development
//        .binaryTarget(
//            name: "openssl",
//            path: "frameworks/openssl.xcframework.zip")
    ]
)

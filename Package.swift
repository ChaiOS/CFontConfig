// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "CFontConfig",
    pkgConfig: "fontconfig",
    providers: [
        .apt(["libfontconfig1-dev"]),
        .brew(["fontconfig"])
    ],
    products: [
        .library(name: "CFontConfig", targets: ["CFontConfig"])
    ],
    targets: [
        .target(name: "CFontConfig")
    ]
)

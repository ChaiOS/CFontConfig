// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "CFontConfig",
    products: [
        .library(name: "CFontConfig", targets: ["CFontConfig"])
    ],
    targets: [
        .systemLibrary(
            name: "CFontConfig",
            pkgConfig: "fontconfig",
            providers: [
                .apt(["libfontconfig1-dev"]),
                .brew(["fontconfig"])
            ]
        )
    ]
)

// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Masonry",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "Masonry",
            targets: ["Masonry"]
        )
    ],
    targets: [
        .target(
            name: "Masonry",
            path: "Masonry",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        ),
        .testTarget(
            name: "MasonryTests",
            path: "Tests",
            exclude: [
                "Masonry Tests.xcodeproj",
                "MasonryTestsLoader",
                "Specs",
                "MasonryTests-Prefix.pch"
            ],
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)

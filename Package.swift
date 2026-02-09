// swift-tools-version:5.3

// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "DateToolsSwift",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "DateToolsSwift",
            targets: ["DateToolsSwift"]
        )
    ],
    targets: [
        .target(
            name: "DateToolsSwift",
            path: "DateToolsSwift/DateTools",
            exclude: [
                "Examples"
            ],
            resources: [
                .process("DateTools.bundle")
            ]
        ),
        .testTarget(
            name: "DateToolsSwiftTests",
            dependencies: ["DateToolsSwift"],
            path: "DateToolsSwift/Tests/DateToolsTests/DateToolsTestsTests",
            exclude: [
                "Info.plist"
            ]
        )
    ]
)

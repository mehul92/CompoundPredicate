// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CompoundPredicate",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
        .tvOS(.v17),
        .watchOS(.v10),
        .visionOS(.v1),
        .macCatalyst(.v17)
    ],
    products: [
        .library(
            name: "CompoundPredicate",
            targets: ["CompoundPredicate"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.1.0")
    ],
    targets: [
        .target(
            name: "CompoundPredicate",
            dependencies: [
                .product(name: "IssueReporting", package: "swift-issue-reporting")
            ]
        ),
    ]
)

// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SHUserDefaultsPersistenceService",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SHUserDefaultsPersistenceService",
            targets: ["SHUserDefaultsPersistenceService"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Yabby1997/SHPersistenceServiceInterface", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: "SHUserDefaultsPersistenceService",
            dependencies: [
                .product(name: "SHPersistenceServiceInterface", package: "SHPersistenceServiceInterface"),
            ]),
    ]
)

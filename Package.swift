// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SHUserDefaults PersistenceService",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SHUserDefaults PersistenceService",
            targets: ["SHUserDefaults PersistenceService"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Yabby1997/SHPersistenceServiceInterface", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: "SHUserDefaults PersistenceService",
            dependencies: [
                .product(name: "SHPersistenceServiceInterface", package: "SHPersistenceServiceInterface"),
            ]),
    ]
)

// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "KipaCore",
  platforms: [.iOS(.v12),
              .macOS(.v10_12)],
  products: [
    .library(
      name: "KipaCore",
      targets: [
        "CoreNetworking",
        "Shouter",
        "DependencyInjection"
      ]
    ),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "CoreNetworking",
      dependencies: ["Shouter"]
    ),
    .target(name: "Shouter"),
    .target(name: "DependencyInjection"),
    .testTarget(
      name: "CoreNetworkingTests",
      dependencies: ["CoreNetworking", "Shouter"],
      path: "Tests"
    )
  ]
)

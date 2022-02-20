// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "KipaCore",
  platforms: [.iOS(.v12),
              .macOS(.v10_12)],
  products: [
    .library(
      name: "CoreNetworking",
      targets: ["CoreNetworking"]),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "CoreNetworking",
      dependencies: ["Shouter"]
    ),
    .target(name: "Shouter"),
    .testTarget(
      name: "CoreNetworkingTests",
      dependencies: ["CoreNetworking", "Shouter"],
      path: "Tests"
    )
  ]
)

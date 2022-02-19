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
  dependencies: [
    .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.5.0"))    
  ],
  targets: [
    .target(
      name: "CoreNetworking",
      dependencies: ["Alamofire", "Shouter"]
    ),
    .target(name: "Shouter"),
    .testTarget(
      name: "CoreNetworkingTests",
      dependencies: ["CoreNetworking", "Shouter"],
      path: "Tests"
    )
  ]
)

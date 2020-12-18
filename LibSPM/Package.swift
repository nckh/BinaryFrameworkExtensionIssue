// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "LibSPM",
  products: [
    .library(
      name: "LibSPM",
      targets: ["LibSPM"]
    ),
  ],
  dependencies: [],
  targets: [
    .binaryTarget(
      name: "LibSPM",
      path: "Lib.xcframework"
    ),
  ]
)

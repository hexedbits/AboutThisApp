// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
//  Created by Jesse Squires
//  https://www.jessesquires.com
//
//  Documentation
//  https://hexedbits.github.io/AboutThisApp
//
//  GitHub
//  https://github.com/hexedbits/AboutThisApp
//
//  Copyright © 2020-present Jesse Squires, Hexed Bits
//  https://www.hexedbits.com
//

import PackageDescription

let package = Package(
    name: "AboutThisApp",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "AboutThisApp",
            targets: ["AboutThisApp"])
    ],
    targets: [
        .target(
            name: "AboutThisApp",
            path: "Sources",
            exclude: ["Info.plist"]),
        .testTarget(name: "AboutThisAppTests",
                    dependencies: ["AboutThisApp"],
                    path: "Tests",
                    exclude: ["Info.plist"])
    ],
    swiftLanguageVersions: [.v5]
)

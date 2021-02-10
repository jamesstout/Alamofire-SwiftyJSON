// swift-tools-version:5.3

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.

import PackageDescription

let package = Package(
    name: "Alamofire-SwiftyJSON",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_11)
    ],
    products: [
        .library(
            name: "Alamofire-SwiftyJSON",
            targets: ["Alamofire-SwiftyJSON"])

    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMinor(from: "5.4.1")),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMinor(from: "5.0.0"))
    ],
    targets: [
        .target(name: "Alamofire-SwiftyJSON", dependencies: ["SwiftyJSON", "Alamofire"])
    ],
    swiftLanguageVersions: [.v5]
)
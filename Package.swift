// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SlackMessagesEstimatorUtility",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(name: "smeu", targets: ["SlackMessagesEstimatorUtility"]),
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Rainbow", from: "4.0.1"),
        .package(url: "https://github.com/RomanPodymov/SlackMessagesEstimator__.git", branch: "code"),
        .package(url: "https://github.com/SwifterSwift/SwifterSwift.git", from: "6.0.0")
    ],
    targets: [
        .executableTarget(
            name: "SlackMessagesEstimatorUtility",
            dependencies: [
                .product(name: "Rainbow", package: "Rainbow"),
                .product(name: "SwifterSwift", package: "SwifterSwift"),
                .product(name: "SlackMessagesEstimator", package: "SlackMessagesEstimator__")
            ]),
        .testTarget(
            name: "SlackMessagesEstimatorUtilityTests",
            dependencies: ["SlackMessagesEstimatorUtility"]),
    ]
)

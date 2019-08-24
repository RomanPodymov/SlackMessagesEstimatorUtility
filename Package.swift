// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SlackMessagesEstimatorUtility",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .executable(name: "smeu", targets: ["SlackMessagesEstimatorUtility"]),
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Rainbow", from: "3.1.5"),
        .package(url: "https://github.com/RomanPodymov/SlackMessagesEstimator.git", from: "0.0.2"),
        .package(url: "https://github.com/SwifterSwift/SwifterSwift.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "SlackMessagesEstimatorUtility",
            dependencies: ["Rainbow", "SlackMessagesEstimator", "SwifterSwift"]),
        .testTarget(
            name: "SlackMessagesEstimatorUtilityTests",
            dependencies: ["SlackMessagesEstimatorUtility"]),
    ]
)

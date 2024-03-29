// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "AlamofireNetworkActivityLogger",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_12),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "AlamofireNetworkActivityLogger",
            targets: ["AlamofireNetworkActivityLogger"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("4.9.1")),
    ],
    targets: [
        .target(
            name: "AlamofireNetworkActivityLogger",
            dependencies: [
                "Alamofire",
            ],
            path: "Source"),
    ],
    swiftLanguageVersions: [.v5]
)

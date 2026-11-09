
 // swift-tools-version: 6.3
import PackageDescription

let package = Package(
    name: "swift-executable",
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-crypto.git",
            from: "3.0.0"
        )
    ],
    targets: [
        .executableTarget(
            name: "swift-executable",
            dependencies: [
                .product(name: "Crypto", package: "swift-crypto")
            ]
        ),
        .testTarget(
            name: "swift-executableTests",
            dependencies: ["swift-executable"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
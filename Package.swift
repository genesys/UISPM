// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "GenesysCloud",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "GenesysCloud",
            targets: ["GenesysCloudWrapper"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/GolanSG/MessengerSPM.git",
            from: "1.10.1"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "GenesysCloud",
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloud/GenesysCloud_version_t1.10.1_commit_755e8ab3dc1e53022111d4218059d689966fb237.zip",
            checksum: "d9eaa21bece26207b303787b448ac0b2251cb43980f7775aa6dfdec033926663"
        ),
        .target(
            name: "GenesysCloudWrapper",
            dependencies: [
                "GenesysCloud",
                .product(name: "GenesysCloudMessenger", package: "MessengerSPM")
            ]
        )
    ]
)

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
            checksum: "8133b8f1b1063fa85fa2258bc47809fa6ff000d4bad33115b403a059bb34e6f2"
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

// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ClientPackage",
    platforms: [ .iOS(.v15), .macOS(.v12) ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ClientPackage",
            targets: ["ClientPackageTarget"]
        ),
        .library(
            name: "ExtensionThirdPartyLib",
            targets: ["ExtensionThirdPartyTarget"]
        ),
        .library(
            name: "DesktopThirdPartyLib",
            targets: ["DesktopThirdPartyTarget"]
        ),
        .library(
            name: "TestsThirdPartyLib",
            targets: ["TestsThirdPartyTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/johnpatrickmorgan/NavigationBackport", from: "0.9.0"),
//        .package(url: "https://github.com/getsentry/sentry-cocoa", from: "8.13.0"),
//        .package(url: "https://github.com/OneSignal/OneSignal-iOS-SDK", from: "5.0.2"),
//        .package(url: "https://github.com/RevenueCat/purchases-ios", from: "4.25.10"),
//        .package(url: "https://github.com/auth0/JWTDecode.swift", from: "3.1.0"),
//        .package(url: "https://github.com/srgtuszy/keychain-swift", branch: "master"),
//        .package(url: "https://github.com/siteline/swiftui-introspect", from: "1.0.0"),
//        .package(url: "https://github.com/mixpanel/mixpanel-swift", from: "4.1.4"),
//        .package(url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework", from: "6.12.2"),
//        .package(url: "https://github.com/aws-amplify/aws-sdk-ios-spm", from: "2.33.4"),
//        .package(url: "https://github.com/Quick/Quick", from: "7.2.0"),
//        .package(url: "https://github.com/Quick/Nimble", from: "12.2.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ExtensionThirdPartyTarget",
            dependencies: [
//                .productItem(name: "OneSignalExtension", package: "OneSignal-iOS-SDK", moduleAliases: nil, condition: nil)
            ]
        ),
        .target(
            name: "DesktopThirdPartyTarget",
            dependencies: [
//                .productItem(name: "Sentry", package: "sentry-cocoa", moduleAliases: nil, condition: nil)
            ]
        ),
        .target(
            name: "TestsThirdPartyTarget",
            dependencies: [
//                "Quick",
//                "Nimble"
            ]
        ),
        .target(
            name: "ClientPackageThirdPartyTarget",
            dependencies: [
                "NavigationBackport",
//                .productItem(name: "Sentry", package: "sentry-cocoa", moduleAliases: nil, condition: nil),
//                .productItem(name: "OneSignalFramework", package: "OneSignal-iOS-SDK", moduleAliases: nil, condition: nil),
//                .productItem(name: "OneSignalInAppMessages", package: "OneSignal-iOS-SDK", moduleAliases: nil, condition: nil),
//                .productItem(name: "RevenueCat", package: "purchases-ios", moduleAliases: nil, condition: nil),
//                .productItem(name: "JWTDecode", package: "JWTDecode.swift", moduleAliases: nil, condition: nil),
//                .productItem(name: "KeychainSwift", package: "keychain-swift", moduleAliases: nil, condition: nil),
//                .productItem(name: "SwiftUIIntrospect", package: "swiftui-introspect", moduleAliases: nil, condition: nil),
//                .productItem(name: "Mixpanel", package: "mixpanel-swift", moduleAliases: nil, condition: nil),
//                .productItem(name: "AppsFlyerLib", package: "AppsFlyerFramework", moduleAliases: nil, condition: nil),
//                .productItem(name: "AWSCognitoIdentityProvider", package: "aws-sdk-ios-spm", moduleAliases: nil, condition: nil),
//                .productItem(name: "AWSMobileClientXCF", package: "aws-sdk-ios-spm", moduleAliases: nil, condition: nil)
            ]
        ),
        .target(
            name: "ClientPackageTarget",
            dependencies: [
                "ClientPackageThirdPartyTarget"
            ]
        )
    ]
)

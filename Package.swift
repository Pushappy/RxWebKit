// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "RxWebKit",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "RxWebKit", targets: ["RxWebKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", from: "6.0.0"),
        .package(url: "https://github.com/Quick/Quick.git", from: "2.2.0"),
        .package(url: "https://github.com/Quick/Nimble.git", .branch("main"))
    ],
    targets: [
        .target(name: "RxWebKit", dependencies: ["RxSwift", "RxCocoa"], path: "RxWebKit"),
        .testTarget(name: "RxWebKitTests", dependencies: ["RxWebKit", "RxSwift", "RxCocoa", "RxTest", "Quick", "Nimble"], path: "RxWebKitTests")
    ]
)

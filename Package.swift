// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "NxhoCapacitorRazorpay",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "NxhoCapacitorRazorpay",
            targets: ["Checkout"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "8.0.0")
        .package(url: "https://github.com/razorpay/razorpay-pod.git", from: "1.5.6")
    ],
    targets: [
        .target(
            name: "Checkout",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
                .product(name: "RazorpayCheckout", package: "razorpay-pod")
            ],
            path: "ios/Sources/Checkout"),
        .testTarget(
            name: "CheckoutTests",
            dependencies: ["Checkout"],
            path: "ios/Tests/CheckoutTests")
    ]
)

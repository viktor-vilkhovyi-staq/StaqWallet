# StaqWallet

### Installation

### Using Swift Package Manager (SPM)

Add the package dependency to your `Package.swift` file and add the dependency to the `dependencies` array. Here's an example:

```swift
dependencies: [
    .package(url: "https://github.com/staqio/TrustlessSDK", branch: "feat/dev-finlab"),
    .package(url: "https://github.com/staqio/StaqWallet", from: "0.3.0")
]
```

```swift
targets: [
    .target(name: "TargetName", dependencies:["StaqWallet", "TrustlessSDK"])
]
```

Run the command `swift package update` to download the package and its dependencies.

> ! Note: You need to add the TrustlessSDK package as well because StaqWallet depends on it.

### Usage

To initiate the Wallet flow, import StaqWallet and utilize the `StaqWalletNavigationController` it provides. To start the flow, you need to provide configuration and embed this navigation controller into your existing navigation controller. Here is a basic example:

```swift
import StaqWallet
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        let window = UIWindow(windowScene: windowScene)
        self.window = window

        let config = StaqWalletConfig(userId: "user-id",
                                      secret: "user-token",
                                      email: "user-email",
                                      language: .en, // or .ar
                                      googleMapsApiKey: "google-maps-api-key",
                                      mobileNumber: "user-mobile-number")
        let rootViewController = StaqWalletNavigationController(config: config)
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
}
```

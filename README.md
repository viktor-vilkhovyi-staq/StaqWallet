# StaqWallet

### Installation

### Using Swift Package Manager (SPM)

Add the package dependency to your `Package.swift` file and add the dependency to the `dependencies` array. Here's an example:

```swift
dependencies: [
    .package(url: "https://github.com/staqio/TrustlessSDK", branch: "feat/dev-finlab"),
    .package(url: "https://github.com/staqio/StaqWallet", from: "0.6.2")
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

To initiate the Wallet flow, import StaqWallet and utilize the `AppFlowCoordinator` it provides. To start the flow, firstly you need to initialize user and trigger Wallet flow using `AppFlowCoordinator` that provides `start` method. Here is a basic example:

```swift
import StaqWallet
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        let window = UIWindow(windowScene: windowScene)
        self.window = window 

        let rootVC = UIViewController()
        let navController = UINavigationController(rootViewController: rootVC)  // you existing navigation controller
        window.rootViewController = navController
        window.makeKeyAndVisible()

        AppUser.set(
            firstName: "user-first-name",
            lastName: "user-last-name",
            userName: "username",
            password: "user-password",
            email: "user-email"
        )
        AppFlowCoordinator().start(window: window)Ï
    }
}
```

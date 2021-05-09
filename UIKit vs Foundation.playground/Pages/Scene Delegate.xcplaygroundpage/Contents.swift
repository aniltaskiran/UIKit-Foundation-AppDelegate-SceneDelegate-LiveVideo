/*:
 [Previous](@previous) | [Next](@next)
 ****

 Copyright (c) 2021 Anıl T.

 Official Apple documentation available at [Swift Language Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/)

 Anıl Taşkıran - [medium](https://aniltaskiran.medium.com/) | [@aniiltaskiran](http://twitter.com/aniiltaskiran)

 ****
 */

/*:
 # SceneDelegate
 */


/*:
### From iOS 13 and later, SceneDelegate takes up some responsibilites from AppDelegate. In particular related to UIWindow from AppDelegate is now UIScene in SceneDelegate. An app can have more than one scene which mostly handles application interface and app content. So, the SceneDelegate is responsible for what’s displayed on the screen in terma of UI and data.

 [Understanding Scene Delegate & App Delegate - Kalyan Parise Medium](https://medium.com/@kalyan.parise/understanding-scene-delegate-app-delegate-7503d48c5445)
 */

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        guard let _ = (scene as? UIWindowScene) else { return }

/*:
This is the first method called in UISceneSession life cycle. This method will creates new UIWindow, sets the root view controller and makes this window the key window to be displayed.
*/
    }

    func sceneDidDisconnect(_ scene: UIScene) {
/*:
Called as the scene is being released by the system.
This occurs shortly after the scene enters the background, or when its session is discarded.
Release any resources associated with this scene that can be re-created the next time the scene connects.
The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
*/
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
/*:
Called when the scene has moved from an inactive state to an active state.
Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
*/
    }

    func sceneWillResignActive(_ scene: UIScene) {
/*:
Called when the scene will move from an active state to an inactive state.
This may occur due to temporary interruptions (ex. an incoming phone call).
*/
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
/*:
Called as the scene transitions from the background to the foreground.
Use this method to undo the changes made on entering the background.
*/
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
/*:
Called as the scene transitions from the foreground to the background.
Use this method to save data, release shared resources, and store enough scene-specific state information
to restore the scene back to its current state.
*/
    }
}



/*:
 ****
 [Previous](@previous) | [Next](@next)
 */


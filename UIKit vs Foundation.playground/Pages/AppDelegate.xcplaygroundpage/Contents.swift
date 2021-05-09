/*:
 [Previous](@previous) | [Next](@next)
 ****

 Copyright (c) 2021 Anıl T.

 Official Apple documentation available at [Swift Language Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/)

 Anıl Taşkıran - [medium](https://aniltaskiran.medium.com/) | [@aniiltaskiran](http://twitter.com/aniiltaskiran)

 ****
 */

/*:
 # App Delegate
 */


/*:
## The AppDelegate class of your app adopts the UIApplicationDelegate protocol, which is part of the UIKit framework. The app delegate’s role has changed since iOS 12, as we’ll soon discover.

 #### Here’s what you typically used the app delegate for:

 * Set up the first view controller of your app, called the root view controller
 * Configure app settings and startup components, such as logging and cloud services
 * Register push notification handlers, and respond to push notifications sent to the app
 * Respond to app lifecycle events, such as entering the background, resuming the app, or exiting the app (termination)
 */

/*:
 ### The AppDelegate will be responsible for the application lifecycle and setup. The SceneDelegate will be responsible for what is shown on the screen (Windows or Scenes) handle and manage the way your app is shown.
 [Kalyan Parise - Medium](https://medium.com/@kalyan.parise/understanding-scene-delegate-app-delegate-7503d48c5445)

*/

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
/*:
#### This method is called when the application is launched and where the application set-up is done. Earlier iOS 13, we might have used this method to configure the UIWindow object and assign a ViewController instance to the UIWindow object to make it display on the screen. From iOS 13, if your application has scenes, then AppDelegate is no longer responsible for handling this and is moved to SceneDelegate.
*/
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
/*:
### Asks the delegate to open a resource specified by a URL, and provides a dictionary of launch options.
*/
/*:
app: Your singleton app object.

url: The URL resource to open. This resource can be a network resource or a file. For information about the Apple-registered URL schemes, see Apple URL Scheme Reference.

options: A dictionary of URL handling options. For information about the possible keys in this dictionary and how to handle them, see UIApplicationOpenURLOptionsKey. By default, the value of this parameter is an empty dictionary.
*/


        return true
    }

    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */


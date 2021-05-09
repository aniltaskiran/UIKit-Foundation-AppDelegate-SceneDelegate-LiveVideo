/*:
 [Previous](@previous) | [Next](@next)
 ****

 Copyright (c) 2021 Anıl T.

 Official Apple documentation available at [Swift Language Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/)

 Anıl Taşkıran - [medium](https://aniltaskiran.medium.com/) | [@aniiltaskiran](http://twitter.com/aniiltaskiran)

 ****
 */

/*:
 # Life Cycle
 */
import UIKit
import PlaygroundSupport

class ViewController: UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black

        view.addSubview(label)
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = ViewController()

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */


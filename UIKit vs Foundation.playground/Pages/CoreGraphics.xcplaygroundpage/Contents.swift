/*:
 [Previous](@previous) | [Next](@next)
 ****

 Copyright (c) 2021 Anıl T.

 Official Apple documentation available at [Swift Language Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/)

 Anıl Taşkıran - [medium](https://aniltaskiran.medium.com/) | [@aniiltaskiran](http://twitter.com/aniiltaskiran)

 ****
 */

/*:
 # CoreGraphics
 ### The CoreGraphics framework contains the interfaces for the Quartz 2D drawing API and is the same advanced, vector-based drawing engine that’s used in Mac OS X. It provides support for path-based drawing, anti-aliased rendering, gradients, images, colors, coordinate-space transformations, and PDF document creation, display, and parsing.

 Although the API is C based, it uses object-based abstractions to make things easier for you. While it is the basis for many things you see on the screen, you won’t be using it directly for many app projects.
 */
import CoreGraphics
import UIKit
import PlaygroundSupport

class PDFViewerViewController: UIViewController {
    override func loadView() {
        let view = UIView()
//        #fileLiteral(resourceName: "medium.pdf")
        let image: UIImage? = pdf(url: #fileLiteral(resourceName: "medium.pdf"))
        let imageView = UIImageView(image: image)
        view.addSubview(imageView)
        self.view = view
    }

    func pdf(url: URL) -> UIImage? {
        guard  let doc  = CGPDFDocument(url as CFURL),
               let page = doc.page(at: 1)
        else { return nil }

        let pageRect = page.getBoxRect(.mediaBox)
        let renderer = UIGraphicsImageRenderer(size: pageRect.size)

        let img = renderer.image { ctx in
            UIColor.white.set()
            ctx.fill(pageRect)

            ctx.cgContext.translateBy(x: 0.0, y: pageRect.size.height)
            ctx.cgContext.scaleBy(x: 1.0, y: -1.0)

            ctx.cgContext.drawPDFPage(page)
        }

        return img
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = PDFViewerViewController()

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */


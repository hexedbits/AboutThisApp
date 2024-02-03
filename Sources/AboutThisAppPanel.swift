//
//  Created by Jesse Squires
//  https://www.jessesquires.com
//
//  Documentation
//  https://hexedbits.github.io/AboutThisApp
//
//  GitHub
//  https://github.com/hexedbits/AboutThisApp
//
//  Copyright © 2020-present Jesse Squires, Hexed Bits
//  https://www.hexedbits.com
// 

import AppKit

/// A panel to display the "AboutThisApp" view controller.
public final class AboutThisAppPanel: NSPanel {

    /// The "About" view controller.
    public let aboutViewController: AboutThisAppViewController

    /// Creates a new `AboutThisAppPanel`.
    /// - Parameter metadata: The app meta data used to construct the view.
    public init(metadata: AppMetadata = AppMetadata()) {
        self.aboutViewController = AboutThisAppViewController(metadata: metadata)

        super.init(contentRect: .zero, styleMask: [.titled, .closable, .resizable], backing: .buffered, defer: false)

        self.contentViewController = self.aboutViewController
        self.titlebarAppearsTransparent = false
        self.becomesKeyOnlyIfNeeded = false

        let screenFrame = NSScreen.main!.frame
        let leftPoint = NSPoint(x: screenFrame.midX, y: screenFrame.maxY)
        self.setFrameTopLeftPoint(leftPoint)
    }
}

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

import Cocoa

public final class AboutThisAppPanel: NSPanel {

    public let aboutViewController: AboutThisAppViewController

    public init(metadata: AppMetadata) {
        self.aboutViewController = AboutThisAppViewController(metadata: metadata)

        super.init(contentRect: .zero, styleMask: [.titled, .closable], backing: .buffered, defer: false)

        self.contentViewController = self.aboutViewController
        self.titleVisibility = .hidden
        self.titlebarAppearsTransparent = true
        self.becomesKeyOnlyIfNeeded = false

        let screenFrame = NSScreen.main!.frame
        let leftPoint = NSPoint(x: screenFrame.midX, y: screenFrame.maxY)
        self.setFrameTopLeftPoint(leftPoint)
    }
}

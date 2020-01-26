//
// Created by Jesse Squires on 1/25/20.
// Copyright © 2020 Hexed Bits. all rights reserved.
// 

import Cocoa

public final class AboutThisAppPanel: NSPanel {

    public let aboutViewController: AboutThisAppViewController

    public init() {
        self.aboutViewController = AboutThisAppViewController()

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

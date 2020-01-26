//
// Created by Jesse Squires on 1/25/20.
// Copyright © 2020 Hexed Bits. all rights reserved.
// 

import Cocoa

public final class AboutThisAppPanel: NSPanel {

    public init() {
        super.init(contentRect: .zero, styleMask: [.titled, .closable], backing: .buffered, defer: false)

        let controller = AboutThisAppViewController()
        self.contentViewController = controller

        let viewSize = controller.view.frame.size
        self.maxSize = viewSize
        self.minSize = viewSize

        self.titleVisibility = .hidden
        self.titlebarAppearsTransparent = true
        self.becomesKeyOnlyIfNeeded = false

        let screenFrame = NSScreen.main!.frame
        let leftPoint = NSPoint(x: screenFrame.midX - (viewSize.width / 2), y: screenFrame.maxY)
        self.setFrameTopLeftPoint(leftPoint)
    }
}

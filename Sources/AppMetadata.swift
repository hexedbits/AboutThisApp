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

public struct AppMetadata {

    public let icon: NSImage

    public let iconSize: CGFloat

    public let name: String

    public let versionText: String

    public let altVersionText: String

    public let url: URL?

    public let urlColor: NSColor

    public let copyrightText: String

    public init(icon: NSImage = NSImage.appIcon!,
                iconSize: CGFloat = 80,
                name: String = Bundle.main.appName!,
                versionText: String = Bundle.main.shortVersionString!,
                altVersionText: String = Bundle.main.fullVersionString!,
                url: URL? = nil,
                urlColor: NSColor = .systemBlue,
                copyrightText: String = Bundle.main.copyright!) {
        self.icon = icon
        self.iconSize = iconSize
        self.name = name
        self.versionText = versionText
        self.altVersionText = altVersionText
        self.url = url
        self.urlColor = urlColor
        self.copyrightText = copyrightText
    }
}

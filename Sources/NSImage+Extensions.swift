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

extension NSImage {
    /// Returns the app icon (using `NSImage.applicationIconName`) from the
    /// asset in the main bundle's asset catalog, if it exists.
    public static var appIcon: NSImage? {
        NSImage(named: NSImage.applicationIconName)
    }
}

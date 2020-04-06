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

public class Testing {

}

private class LOL {

}



extension Bundle {

    /// Returns version text using the info plist value
    /// for the `CFBundleShortVersionString` key, if it exists.
    /// - Note: For example, "Version 1.0"
    public var shortVersionString: String? {
        guard let release = self.infoDictionary?["CFBundleShortVersionString"] else {
            return nil
        }
        return "Version \(release)"
    }

    /// Returns version and build text using the info plist value
    /// for the `CFBundleShortVersionString` key
    /// and the `CFBundleVersion` key, if they exist.
    /// - Note: For example, "Version 1.0 (345)"
    public var fullVersionString: String? {
        guard let release = self.shortVersionString,
            let build = self.infoDictionary?["CFBundleVersion"] else {
                return nil
        }
        return "\(release) (\(build))"
    }

    /// Returns the app name using the info plist value for the `CFBundleName` key, if it exists.
    public var appName: String? {
        self.infoDictionary?["CFBundleName"] as? String
    }

    /// Returns the copyright information using the info plist value
    /// for the `NSHumanReadableCopyright` key, if it exists.
    public var copyright: String? {
        self.infoDictionary?["NSHumanReadableCopyright"] as? String
    }
}

extension NSImage {

    /// Returns the app icon (using `NSImage.applicationIconName`) from the
    /// asset in the main bundle's asset catalog, if it exists.
    public static var appIcon: NSImage? {
        NSImage(named: NSImage.applicationIconName)
    }
}

extension URL {
    var displayText: String {
        guard let host = self.host else {
            return self.absoluteString
        }
        return host + self.path
    }
}

extension NSTextField {
    convenience init(label: String?) {
        self.init(string: label ?? "")
        self.textColor = .labelColor
        self.isEditable = false
        self.isSelectable = false
        self.isBezeled = false
        self.isBordered = false
        self.backgroundColor = .clear
        self.alignment = .center
        self.lineBreakMode = .byWordWrapping
        self.usesSingleLineMode = false
        self.maximumNumberOfLines = 20
    }
}

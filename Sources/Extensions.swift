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

extension Bundle {
    public var shortVersionString: String? {
        guard let release = self.infoDictionary?["CFBundleShortVersionString"] else {
            return nil
        }
        return "Version \(release)"
    }
    
    public var fullVersionString: String? {
        guard let release = self.shortVersionString,
            let build = self.infoDictionary?["CFBundleVersion"] else {
                return nil
        }
        return "\(release) (\(build))"
    }
    
    public var appName: String? {
        self.infoDictionary?["CFBundleName"] as? String
    }
    
    public var copyright: String? {
        self.infoDictionary?["NSHumanReadableCopyright"] as? String
    }
}

extension NSImage {
    public static var appIcon: NSImage? {
        NSImage(named: "AppIcon")
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

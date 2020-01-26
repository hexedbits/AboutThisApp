//
// Created by Jesse Squires on 1/25/20.
// Copyright © 2020 Hexed Bits. all rights reserved.
// 

import Cocoa

extension Bundle {
    var shortVersionString: String? {
        guard let release = self.infoDictionary?["CFBundleShortVersionString"] else {
            return nil
        }
        return "Version \(release)"
    }
    
    var fullVersionString: String? {
        guard let release = self.shortVersionString,
            let build = self.infoDictionary?["CFBundleVersion"] else {
                return nil
        }
        return "Version \(release) (\(build))"
    }
    
    var appName: String? {
        self.infoDictionary?["CFBundleName"] as? String
    }
    
    var copyright: String? {
        self.infoDictionary?["NSHumanReadableCopyright"] as? String
    }
}

extension NSImage {
    static var appIcon: NSImage {
        NSImage(named: "AppIcon")!
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
    }
}

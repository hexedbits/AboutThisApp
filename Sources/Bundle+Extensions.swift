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

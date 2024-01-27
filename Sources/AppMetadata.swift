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
import Foundation

/// Represents the metadata for the app.
public struct AppMetadata {
    /// The app icon.
    /// The default value uses the `AppIcon` asset from asset catalog in the app's main bundle.
    public let icon: NSImage

    /// The size of the icon. The default value is `80`.
    /// - Note: This applies to both the width and height dimensions.
    public let iconSize: CGFloat

    /// The name of the app.
    /// The default is the value contained in the main bundle info.plist for the `CFBundleName` key.
    public let name: String

    /// The app version.
    /// The default is the value contained in the main bundle info.plist for the `CFBundleShortVersionString` key.
    public let versionText: String

    /// Alternate text for the app version.
    /// The default is the value contained in the main bundle info.plist for the `CFBundleShortVersionString` key
    /// combined with the value for the `CFBundleVersion` key.
    public let altVersionText: String

    /// The app website url. The default is `nil`.
    public let url: URL?

    /// The link color for the url.
    /// The default is the app accent color ("AccentColor") if present in your asset catalog,
    /// otherwise `.linkColor`.
    public let urlColor: NSColor

    /// The app copyright information.
    /// The default is the value contained in the main bundle info.plist for the `NSHumanReadableCopyright` key.
    public let copyrightText: String

    /// Creates a new `AppMetadata` instance with the specified values.
    /// - Parameters:
    ///   - icon: The app icon.
    ///   - iconSize: The square dimension of the icon.
    ///   - name: The app name.
    ///   - versionText: The app version.
    ///   - altVersionText: Alternate text for the version.
    ///   - url: The app website url.
    ///   - urlColor: The link color for the url.
    ///   - copyrightText: The app copyright information.
    public init(icon: NSImage = NSImage.appIcon!,
                iconSize: CGFloat = 80,
                name: String = Bundle.main.appName!,
                versionText: String = Bundle.main.shortVersionString!,
                altVersionText: String = Bundle.main.fullVersionString!,
                url: URL? = nil,
                urlColor: NSColor = NSColor(named: "AccentColor") ?? .linkColor,
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

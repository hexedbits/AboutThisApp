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
import SwiftUI

/// The view controller that contains the "About this app" view.
public final class AboutThisAppViewController: NSHostingController<AboutThisAppView> {
    /// The app metadata.
    public let metadata: AppMetadata

    /// Creates a new `AboutThisAppViewController`.
    /// - Parameter metadata: The metadata for the app.
    public init(metadata: AppMetadata) {
        self.metadata = metadata
        super.init(rootView: AboutThisAppView(metadata: metadata))
    }

    /// :nodoc:
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

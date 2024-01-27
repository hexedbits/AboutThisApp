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

import Foundation
import SwiftUI

/// The "About this app" view.
public struct AboutThisAppView: View {
    /// The app metadata.
    public let metadata: AppMetadata

    @State private var displayAltText = false

    /// Initializes the view with the specified `metadata`.
    ///
    /// - Parameter metadata: The metadata for the app.
    public init(metadata: AppMetadata) {
        self.metadata = metadata
    }

    /// :nodoc:
    public var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Image(nsImage: self.metadata.icon)
                .resizable()
                .frame(
                    width: self.metadata.iconSize,
                    height: self.metadata.iconSize
                )
                .accessibilityLabel(self.metadata.name)

            Text(self.metadata.name)
                .font(.body.bold())
                .foregroundColor(.primary)

            Button {
                self.displayAltText.toggle()
            } label: {
                Text(
                    self.displayAltText ? self.metadata.altVersionText : self.metadata.versionText
                )
                .foregroundColor(.secondary)
            }
            .buttonStyle(.plain)

            if let url = self.metadata.url {
                Button {
                    NSWorkspace.shared.open(url)
                } label: {
                    Text(url.displayText)
                }
                .buttonStyle(.plain)
                .foregroundColor(Color(self.metadata.urlColor))
            }

            Text(self.metadata.copyrightText)
                .font(.caption)
                .foregroundColor(.primary)
        }
        .frame(
            minWidth: 350,
            idealWidth: 350,
            maxWidth: 400,
            minHeight: 190,
            idealHeight: 210,
            maxHeight: 500,
            alignment: .center
        )
    }
}

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

/// The view controller that contains the "About this app" view.
public final class AboutThisAppViewController: NSViewController {

    // MARK: Properties

    /// The app's metadata.
    public let metadata: AppMetadata

    private var displayAltText = false

    // MARK: Views

    /// The image view containing the app icon.
    /// - Note: This displays `self.metadata.icon`.
    public private(set) lazy var iconImageView: NSImageView = {
        NSImageView(image: self.metadata.icon)
    }()

    /// The label containing the app name.
    /// - Note: This displays `self.metadata.name`.
    public private(set) lazy var appNameLabel: NSTextField = {
        let label = NSTextField(label: self.metadata.name)
        label.font = NSFont.boldSystemFont(ofSize: 16)
        return label
    }()

    /// The button displaying the app version number.
    /// - Note: This displays `self.metadata.versionText`.
    ///         When clicked, it toggles to display `self.metadata.altVersionText`.
    ///         This can be used to display additional information or 'easter egg' text.
    public private(set) lazy var versionButton: NSButton = {
        let btn = NSButton(title: self.metadata.versionText,
                           target: self,
                           action: #selector(didClickVersion(_:)))
        btn.isBordered = false
        btn.cell?.font = NSFont.systemFont(ofSize: 13)
        btn.contentTintColor = .secondaryLabelColor
        return btn
    }()

    /// The button displaying the app url.
    /// - Note: This displays `self.metadata.url`.
    public private(set) lazy var urlButton: NSButton? = {
        guard let url = self.metadata.url else { return nil }
        let btn = NSButton(title: url.displayText,
                           target: self,
                           action: #selector(didClickURL(_:)))
        btn.isBordered = false
        btn.cell?.font = NSFont.systemFont(ofSize: 13)
        btn.contentTintColor = self.metadata.urlColor
        return btn
    }()

    /// The label displaying the app copyright text.
    /// - Note: This displays `self.metadata.copyrightText`.
    public private(set) lazy var copyrightLabel: NSTextField = {
        let label = NSTextField(label: self.metadata.copyrightText)
        label.font = NSFont.labelFont(ofSize: 11)
        return label
    }()

    // MARK: Init

    /// Creates a new `AboutThisAppViewController`.
    /// - Parameter metadata: The metadata for the app.
    public init(metadata: AppMetadata) {
        self.metadata = metadata
        super.init(nibName: nil, bundle: nil)
    }

    /// :nodoc:
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: View Lifecycle

    /// :nodoc:
    override public func loadView() {
        self.view = NSView()

        let stackView = NSStackView(views: [
            self.iconImageView,
            self.appNameLabel,
            self.versionButton,
            self.urlButton,
            self.copyrightLabel
            ].compactMap { $0 }
        )

        stackView.orientation = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        stackView.alignment = .centerX
        stackView.setContentCompressionResistancePriority(.required, for: .horizontal)
        stackView.setContentCompressionResistancePriority(.required, for: .vertical)

        self.view.addSubview(stackView)

        NSLayoutConstraint.activate([
            self.iconImageView.widthAnchor.constraint(equalToConstant: self.metadata.iconSize),
            self.iconImageView.heightAnchor.constraint(equalToConstant: self.metadata.iconSize),
            stackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 4),
            stackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -16),
            stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 32),
            stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -32),
            stackView.widthAnchor.constraint(equalToConstant: 300)
        ])
    }

    // MARK: Actions

    @objc
    private func didClickVersion(_ sender: NSButton) {
        self.displayAltText.toggle()
        self.versionButton.cell?.title = self.displayAltText ? self.metadata.altVersionText : self.metadata.versionText
    }

    @objc
    private func didClickURL(_ sender: NSButton) {
        guard let url = self.metadata.url else { return }
        NSWorkspace.shared.open(url)
    }
}

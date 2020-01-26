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

public final class AboutThisAppViewController: NSViewController {

    public var iconSize = CGFloat(80)

    public private(set) lazy var iconImageView: NSImageView = {
        NSImageView(image: NSImage.appIcon)
    }()

    public private(set) lazy var appNameLabel: NSTextField = {
        let label = NSTextField(label: Bundle.main.appName)
        label.font = NSFont.boldSystemFont(ofSize: 16)
        return label
    }()

    public private(set) lazy var copyrightLabel: NSTextField = {
        let label = NSTextField(label: Bundle.main.copyright)
        label.font = NSFont.labelFont(ofSize: 10)
        label.textColor = .labelColor
        return label
    }()

    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public override func loadView() {
        self.view = NSView()
        let padding = CGFloat(16.0)

        let stackView = NSStackView(views: [
            self.iconImageView,
            self.appNameLabel,
            self.copyrightLabel
        ])

        stackView.orientation = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 8.0
        stackView.alignment = .centerX
        stackView.setContentCompressionResistancePriority(.required, for: .horizontal)
        stackView.setContentCompressionResistancePriority(.required, for: .vertical)

        self.view.addSubview(stackView)

        NSLayoutConstraint.activate([
            self.iconImageView.widthAnchor.constraint(equalToConstant: self.iconSize),
            self.iconImageView.heightAnchor.constraint(equalToConstant: self.iconSize),
            stackView.topAnchor.constraint(equalTo: self.view.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -padding),
            stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: padding),
            stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -padding),
        ])
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
    }
}

/*
    @IBOutlet private weak var imageView: NSImageView!
    @IBOutlet private weak var appNameLabel: NSTextField!
    @IBOutlet private weak var versionButton: NSButton!
    @IBOutlet private weak var linkButton: NSButton!
    @IBOutlet private weak var copyrightLabel: NSTextField!

    let link = URL(string: "https://hexedbits.com/lucifer")!
//    let linkColor
    let easterEggText = "👿 Hail Satan 👿"

    private var easterEgg = false

    override func viewDidLoad() {
        super.viewDidLoad()

        self.imageView.image = NSImage.appIcon
        self.appNameLabel.cell?.title = Bundle.main.appName
        self.linkButton.title = self.link.host! + self.link.path
        self.copyrightLabel.cell?.title = Bundle.main.copyright
        self.updateVersionText()
    }

    func updateVersionText() {
        self.versionButton.cell?.title = self.easterEgg ? self.easterEggText : Bundle.main.versionString
    }

    @IBAction func didClickVersionButton(_ sender: NSButton) {
        self.easterEgg.toggle()
        self.updateVersionText()
    }

    @IBAction func didClickLinkButton(_ sender: NSButton) {
        NSWorkspace.shared.open(self.link)
    }
}

*/

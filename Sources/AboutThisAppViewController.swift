//
// Created by Jesse Squires on 1/25/20.
// Copyright © 2020 Hexed Bits. all rights reserved.
// 

import Cocoa

final class AboutThisAppViewController: NSViewController {

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

extension Bundle {
    var versionString: String {
        let release = self.infoDictionary!["CFBundleShortVersionString"]!
        let build = self.infoDictionary!["CFBundleVersion"]!
        return "Version \(release) (\(build))"
    }

    var appName: String {
        self.infoDictionary!["CFBundleName"] as! String
    }

    var copyright: String {
        self.infoDictionary!["NSHumanReadableCopyright"] as! String
    }
}

extension NSImage {
    static var appIcon: NSImage {
        NSImage(named: "AppIcon")!
    }
}

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

import AboutThisApp
import AppKit

final class ViewController: NSViewController {
    @IBAction func didClickDisplay(_ sender: NSButton) {
        let metadata = AppMetadata(versionText: Bundle.main.fullVersionString!,
                                   altVersionText: "🎉 optional \"easter egg\" text 🎉",
                                   url: URL(string: "https://hexedbits.com")!)
        let panel = AboutThisAppPanel(metadata: metadata)
        panel.makeKeyAndOrderFront(nil)
    }
}

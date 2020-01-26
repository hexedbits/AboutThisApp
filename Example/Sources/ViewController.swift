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
import Cocoa

final class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didClickDisplay(_ sender: NSButton) {
        let panel = AboutThisAppPanel()
        panel.makeKeyAndOrderFront(nil)
    }
}

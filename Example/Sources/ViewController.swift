//
// Created by Jesse Squires on 1/25/20.
// Copyright © 2020 Hexed Bits. all rights reserved.
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

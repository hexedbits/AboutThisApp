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

extension NSTextField {
    convenience init(label: String?) {
        self.init(string: label ?? "")
        self.textColor = .labelColor
        self.isEditable = false
        self.isSelectable = false
        self.isBezeled = false
        self.isBordered = false
        self.backgroundColor = .clear
        self.alignment = .center
        self.lineBreakMode = .byWordWrapping
        self.usesSingleLineMode = false
        self.maximumNumberOfLines = 20
    }
}

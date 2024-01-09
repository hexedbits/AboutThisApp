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
@testable import ExampleApp
import XCTest

final class ExampleAppTests: XCTestCase {

    func testDefaultAppMetadata() {
        let metadata = AppMetadata()

        XCTAssertEqual(metadata.icon, NSImage.appIcon!)
        XCTAssertEqual(metadata.iconSize, 80)
        XCTAssertEqual(metadata.name, "ExampleApp")
        XCTAssertEqual(metadata.versionText, "Version 1.2.3")
        XCTAssertEqual(metadata.altVersionText, "Version 1.2.3 (666)")
        XCTAssertNil(metadata.url)
        XCTAssertEqual(metadata.urlColor, NSColor(named: "AccentColor"))
        XCTAssertEqual(metadata.copyrightText, "Copyright © 2020 Hexed Bits. All rights reserved.")
    }
}

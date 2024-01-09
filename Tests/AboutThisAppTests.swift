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

@testable import AboutThisApp
import XCTest

final class AboutThisAppTests: XCTestCase {

    func testBundleExtensions() {
        let bundle = Bundle(for: Self.self)

        XCTAssertEqual(bundle.shortVersionString, "Version 1.0")
        XCTAssertEqual(bundle.fullVersionString, "Version 1.0 (1)")
        XCTAssertEqual(bundle.appName, "AboutThisAppTests")
        XCTAssertNil(bundle.copyright)
    }

    func testNSImageExtensions() {
        XCTAssertNotNil(NSImage.appIcon)
    }

    func testURLExtensions() {
        let url1 = URL(string: "https://hexedbits.com")!
        XCTAssertEqual(url1.displayText, "hexedbits.com")

        let url2 = URL(string: "https://www.hexedbits.com")!
        XCTAssertEqual(url2.displayText, "www.hexedbits.com")

        let url3 = URL(string: "https://hexedbits.com/lucifer")!
        XCTAssertEqual(url3.displayText, "hexedbits.com/lucifer")

        let url4 = URL(string: "https://www.hexedbits.com/redeye")!
        XCTAssertEqual(url4.displayText, "www.hexedbits.com/redeye")

        let url5 = URL(string: "https://website.com/some/kind/of/path/")!
        XCTAssertEqual(url5.displayText, "website.com/some/kind/of/path")
    }
}

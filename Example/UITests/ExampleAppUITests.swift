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

import XCTest

final class ExampleAppUITests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }

    override func tearDown() {
        super.tearDown()
    }

    func testDisplayAboutThisAppPanel() {
        let app = XCUIApplication()
        app.launch()

        app.windows["AboutThisApp"].buttons["Display About This App"].click()
        XCTAssertTrue(app.dialogs.firstMatch.exists)

        app.dialogs.firstMatch.click()

        XCTAssertTrue(app.images["application icon"].exists)
        XCTAssertTrue(app.staticTexts["ExampleApp"].exists)
        XCTAssertTrue(app.buttons["hexedbits.com"].exists)
        XCTAssertTrue(app.staticTexts["Copyright © 2020 Hexed Bits. All rights reserved."].exists)

        XCTAssertTrue(app.buttons["Version 1.2.3 (666)"].exists)
        app.buttons["Version 1.2.3 (666)"].click()

        XCTAssertTrue(app.buttons["🎉 optional \"easter egg\" text 🎉"].exists)
        app.buttons["🎉 optional \"easter egg\" text 🎉"].click()

        XCTAssertTrue(app.buttons["Version 1.2.3 (666)"].exists)
    }
}

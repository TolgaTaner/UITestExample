//
//  UITestExampleUITests.swift
//  UITestExampleUITests
//
//  Created by Tolga Taner on 15.02.2021.
//

import XCTest

final class UITestExampleUITests: XCTestCase {

    private var app: XCUIApplication!

    override func setUp() {
        super.setUp()
        //Failure when failure occurs.
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments.append("--userinterfacetesting")
    }

    func testNavigateToWelcomeViewController() throws {
        app.launch()
        
        XCTAssertTrue(app.isUsernameTextFieldDisplayed)
        XCTAssertTrue(app.isPasswordTextFieldDisplayed)
        XCTAssertTrue(app.isDoneButtonTextFieldDisplayed)

        app.usernameTextField.tap()
        app.usernameTextField.typeText("test")
        app.keyboards.buttons["Return"].tap()

        app.passwordTextField.tap()
        app.keys["t"].tap()
        app.keys["e"].tap()
        app.keys["s"].tap()
        app.keys["t"].tap()
        app.keyboards.buttons["Return"].tap()

        XCTAssertEqual(app.usernameTextField.value as? String, "test")

        app.doneButton.tap()

        XCTAssertTrue(app.isWelcomeLabelDisplayed)
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}

extension XCUIApplication {

    var usernameTextField: XCUIElement! {
        textFields["usernameTextField"]
    }
    var passwordTextField: XCUIElement! {
        secureTextFields["passwordTextField"]
    }
    var doneButton: XCUIElement! {
        buttons["doneButton"]
    }
    var welcomeLabel: XCUIElement! {
        staticTexts
            .matching(identifier: "welcomeLabel")
            .element
    }
    var isPasswordTextFieldDisplayed: Bool {
        passwordTextField.exists
    }
    var isUsernameTextFieldDisplayed: Bool {
        usernameTextField.exists
    }
    var isDoneButtonTextFieldDisplayed: Bool {
        doneButton.exists
    }
    var isWelcomeLabelDisplayed: Bool {
        welcomeLabel.exists
    }

}


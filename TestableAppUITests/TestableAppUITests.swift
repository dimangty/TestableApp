//
//  TestableAppUITests.swift
//  TestableAppUITests
//
//  Created by Mikhail Kogan on 23/05/2025.
//

import XCTest

final class TestableAppUITests: XCTestCase {
    @MainActor
    func test_Example() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        app.buttons["Increase"].tap()
        XCTAssertTrue(app.staticTexts["counterLabel"].waitForExistence(timeout: 1))
        XCTAssertEqual(app.staticTexts["counterLabel"].label, "The counter value is 1")
    }
    
    @MainActor
    func test_increase_button() throws {
        let app = XCUIApplication()
        app.launch()
        
        let button = app.buttons["Increase"]
        
        for _ in 0..<3 {
            button.tap()
            sleep(3)
        }
    }
    
    @MainActor
    func test_sheet() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["Show sheet"].tap()
        
        sleep(2)
        
        let customSheetView = app.staticTexts["CustomSheetView"]
        let sheetAppeared = customSheetView.waitForExistence(timeout: 5)
        
        
        XCTAssertTrue(sheetAppeared, "Custom sheet view did not appear")
    }
    
    //@MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        
        let app = XCUIApplication()
        app.launch()
        
        let increaseButton = app.buttons["Increase"]
        increaseButton.tap()
        increaseButton.tap()
        increaseButton.tap()
        app.buttons["Show sheet"].tap()
        
        
    }
}

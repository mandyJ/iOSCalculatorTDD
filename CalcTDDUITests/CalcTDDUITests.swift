//
//  CalcTDDUITests.swift
//  CalcTDDUITests
//
//  Created by Mandy Jor on 6/26/17.
//  Copyright © 2017 ThoughtWorks. All rights reserved.
//

import XCTest

class CalculatorTDDUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_resultDisplayShouldShowTappedButtons(){
        let app = XCUIApplication()
        
        XCTAssert(app.staticTexts["result-display"].label == "0")
        
        app.buttons["1"].tap()
        
        XCTAssert(app.staticTexts["result-display"].label == "1")
        
        app.buttons["2"].tap()
        
        XCTAssert(app.staticTexts["result-display"].label == "12")
        
    }
    
//    func test_canPerformUnaryOperations(){
//        let app = XCUIApplication()
//        
//        app.buttons["4"].tap()
//        app.buttons["√"].tap()
//        
//        XCTAssert(app.staticTexts["description-display"].label == "√4")
//        
//        XCTAssert(app.staticTexts["result-display"].label == "2")
//    }
}

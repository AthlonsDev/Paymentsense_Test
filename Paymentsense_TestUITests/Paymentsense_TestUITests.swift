//
//  Paymentsense_TestUITests.swift
//  Paymentsense_TestUITests
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import XCTest

class Paymentsense_TestUITests: XCTestCase {

    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testUI() {
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Characters"]/*[[".cells.staticTexts[\"Characters\"]",".staticTexts[\"Characters\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Characters"].buttons["Back"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Episodes"]/*[[".cells.staticTexts[\"Episodes\"]",".staticTexts[\"Episodes\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Episodes"].buttons["Back"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Quotes"]/*[[".cells.staticTexts[\"Quotes\"]",".staticTexts[\"Quotes\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Quotes"].buttons["Back"].tap()
        
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Characters"]/*[[".cells.staticTexts[\"Characters\"]",".staticTexts[\"Characters\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Bryan Cranston"]/*[[".cells.staticTexts[\"Bryan Cranston\"]",".staticTexts[\"Bryan Cranston\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Paymentsense_Test.DetailView"].buttons["Characters"].tap()
        app.navigationBars["Characters"].buttons["Back"].tap()
        XCUIApplication().tables/*@START_MENU_TOKEN@*/.staticTexts["Episodes"]/*[[".cells.staticTexts[\"Episodes\"]",".staticTexts[\"Episodes\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        let cells = app.tables.cells
        cells.element(boundBy: 0).tap()
        
        let episodesButton = app.navigationBars["Paymentsense_Test.DetailView"].buttons["Episodes"]
        episodesButton.tap()
        
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Crazy Handful of Nothin"]/*[[".cells.staticTexts[\"Crazy Handful of Nothin\"]",".staticTexts[\"Crazy Handful of Nothin\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        episodesButton.tap()
        app.navigationBars["Episodes"].buttons["Back"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Quotes"]/*[[".cells.staticTexts[\"Quotes\"]",".staticTexts[\"Quotes\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.staticTexts["I am not in danger, Skyler. I am the danger!"].tap()
        app.navigationBars["Paymentsense_Test.DetailView"].buttons["Quotes"].tap()
  
    }
}

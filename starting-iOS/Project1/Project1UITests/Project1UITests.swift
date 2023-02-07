//
//  Project1UITests.swift
//  Project1UITests
//
//  Created by Pedro Freddi on 03/02/23.
//

import XCTest

final class Project1UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testMainViewController() throws {
        let app = XCUIApplication()
        app.launch()
        
        let navBar = app.navigationBars.element
        let tableView = app.tables.element
        XCTAssertEqual(navBar.identifier, "Storm Viewer", "NavigationBar title isn't showing correct title")
        XCTAssertTrue(tableView.exists)
    }

    func testImageDisplay() throws {
        let app = XCUIApplication()
        app.launch()
        
        let tableView = app.tables.element
        let firstCell = tableView.cells.element(boundBy: 0)
        firstCell.tap()
    
        let presentedView = app.otherElements["ImageDetails"]
        XCTAssertTrue(presentedView.exists, "ImageDetails view not found")
        XCTAssertEqual(presentedView.images.element.identifier, "ImageView" , "ImageView not found")
    }
}

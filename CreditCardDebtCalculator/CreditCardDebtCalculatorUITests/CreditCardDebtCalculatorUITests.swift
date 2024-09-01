//
//  CreditCardDebtCalculatorUITests.swift
//  CreditCardDebtCalculatorUITests
//
//  Created by richard Haynes on 8/31/24.
//

import XCTest

final class CreditCardDebtCalculatorUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let collectionViewsQuery = XCUIApplication().collectionViews
        let principalAmountField = collectionViewsQuery.textFields["PrincipalAmount"]
        principalAmountField.tap()
        principalAmountField.press(forDuration: 1.0)
        app.menuItems["Select All"].tap()
        principalAmountField.typeText("1000")
        
        let interestrateTextField = collectionViewsQuery/*@START_MENU_TOKEN@*/.textFields["InterestRate"]/*[[".cells.textFields[\"InterestRate\"]",".textFields[\"InterestRate\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        interestrateTextField.tap()
        interestrateTextField.press(forDuration: 1.0)
        app.menuItems["Select All"].tap()
        interestrateTextField.typeText("18")
        
        let paymentperiodindaysTextField = collectionViewsQuery/*@START_MENU_TOKEN@*/.textFields["PaymentPeriodInDays"]/*[[".cells.textFields[\"PaymentPeriodInDays\"]",".textFields[\"PaymentPeriodInDays\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        paymentperiodindaysTextField.tap()
        paymentperiodindaysTextField.press(forDuration: 1.0)
        app.menuItems["Select All"].tap()
        paymentperiodindaysTextField.typeText("30")
        
        let lateFeesTextField = collectionViewsQuery/*@START_MENU_TOKEN@*/.textFields["Late Fees"]/*[[".cells.textFields[\"Late Fees\"]",".textFields[\"Late Fees\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        lateFeesTextField.tap()
        lateFeesTextField.press(forDuration: 1.0)
        app.menuItems["Select All"].tap()
        lateFeesTextField.typeText("25")
        
        principalAmountField.tap()
        
        let previoustotalpaymentTextField = collectionViewsQuery/*@START_MENU_TOKEN@*/.textFields["PreviousTotalPayment"]/*[[".cells.textFields[\"PreviousTotalPayment\"]",".textFields[\"PreviousTotalPayment\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        previoustotalpaymentTextField.tap()
        previoustotalpaymentTextField.press(forDuration: 1.0)
        app.menuItems["Select All"].tap()
        previoustotalpaymentTextField.typeText("50")
        
        principalAmountField.tap()
        
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Calculate Debt"]/*[[".cells.buttons[\"Calculate Debt\"]",".buttons[\"Calculate Debt\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}

//
//  CreditCardDebtCalculatorTests.swift
//  CreditCardDebtCalculatorTests
//
//  Created by richard Haynes on 8/31/24.
//

import XCTest
@testable import CreditCardDebtCalculator

final class CreditCardDebtCalculatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let principalAmount : Float = 1_000
        let interestRate : Float = 0.18
        let paymentPeriodInDays : Int32 = 30
        let lateFees : Float = 25
        let previousTotalPaymentsAmount: Float = 50
        
        let total = Float(Calculate(principalAmount, interestRate, paymentPeriodInDays,lateFees, previousTotalPaymentsAmount))
        XCTAssertEqual(989.9, total)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

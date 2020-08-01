//
//  Window_shopperTests.swift
//  Window-shopperTests
//
//  Created by Rafa Zaidan on 01/08/2020.
//  Copyright © 2020 Rafa Zaidan. All rights reserved.
//

import XCTest

class Window_shopperTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    // Testing our logic
    func testGetHours() {
        
        // We assert that 100 divided by 25 will give us 4
        XCTAssert(Wage.getHours(forWage: 25, andPrice: 100) == 4)
        
        // We assert that 250.50 divided by 24.30 will give us 11 when rounded up
        XCTAssert(Wage.getHours(forWage: 24.30, andPrice: 250.50) == 11)
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}

//
//  ConversionPadTests.swift
//  ConversionPadTests
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import XCTest
@testable import ConversionPad

class ConversionPadTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testDistanceConversion() {
        let distance = Distance.foot
        let value = 5.0
        let result = distance.convert(value, to: .millimeter)
        
        XCTAssertEqual(result, value * 304.8)
        XCTAssertEqual(result, 1524.0)
        
        let newResult = distance.convert(value, to: .foot)
        XCTAssertEqual(newResult, value)
    }
    
    func testSpeedConversion() {
        let speed = Speed.mph
        let value = 34.5
        let result = speed.convert(value, to: .mps)
        
        XCTAssertEqual(result, value * 0.44704)
        XCTAssertEqual(result, 15.42288)
        
        let newResult = speed.convert(value, to: .mph)
        XCTAssertEqual(newResult, value)
        
    }
    
    func testFrequencyConversion() {
        let frequency = Frequency.rpm
        let value = 696.0
        let result = frequency.convert(value, to: .hz)
        
        XCTAssertEqual(result, value * 0.01666666666)
        XCTAssertEqual(result, 11.59999999536)

        
        let newResult = frequency.convert(value, to: .rpm)
        XCTAssertEqual(newResult, value)
        
    }
    
    func testWeightConversion() {
        let weight = Weight.ounce
        let value = 5.0
        let result = weight.convert(value, to: .milligram)
        
        XCTAssertEqual(result, value * 28349.5)
        XCTAssertEqual(result, 141747.5)

        
        let newResult = weight.convert(value, to: .ounce)
        XCTAssertEqual(newResult, value)
        
    }
    
    func testTemperatureConversion() {
        let distance = Temperature.celsius
        let value = 15.0
        let result = distance.convert(value, to: .fahrenheit)
        
        XCTAssertEqual(result, (value * 9/5) + 32)
        XCTAssertEqual(result, 59.0)
        
        let newResult = distance.convert(value, to: .celsius)
        XCTAssertEqual(newResult, value)
        
        
    }
}

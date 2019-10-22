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
    
    func testReverseList() {
        // MARK: Distance Reversed List validation
        var originalDistanceReversedList = [String]()
        let distanceListReversed = ["nanometer", "micrometer", "millimeter", "kilometer", "yard", "mile", "meter", "foot", "centimeter", "inch"]
        let distanceBundle = Bundle(for: DistanceViewController.self)
        let distanceStoryboard = UIStoryboard(name: "Main", bundle: distanceBundle)
        
        if let distanceVc = distanceStoryboard.instantiateViewController(withIdentifier: "DistanceViewController") as? DistanceViewController {
            let numberOfUnits = distanceVc.distances.count - 1
            for index in 0...numberOfUnits {
                originalDistanceReversedList.append(distanceVc.distances[(distanceVc.distances.endIndex-1) - index].title)
            }
        }
        
        XCTAssertEqual(originalDistanceReversedList, distanceListReversed)
        
        
        // MARK: Speed Reversed List validation
        var originalSpeedReversedList = [String]()
        let speedListReversed = ["kilometers per hour", "mach", "miles per hour", "knot", "feet per second", "meters per second"]
        
        let speedBundle = Bundle(for: SpeedViewController.self)
        let speedStoryboard = UIStoryboard(name: "Main", bundle: speedBundle)
        if let speedVc = speedStoryboard.instantiateViewController(withIdentifier: "SpeedViewController") as? SpeedViewController {
            let numberOfUnits = speedVc.speeds.count - 1
            for index in 0...numberOfUnits {
                originalSpeedReversedList.append(speedVc.speeds[(speedVc.speeds.endIndex-1) - index].title)
            }
        }
        
        XCTAssertEqual(originalSpeedReversedList, speedListReversed)

        
        // MARK: Frequency Reversed List validation
        var originalFrequencyReversedList = [String]()
        let frequencyListReversed = ["rpm", "hz"]
        
        let frequencyBundle = Bundle(for: FrequencyViewController.self)
        let frequencyStoryboard = UIStoryboard(name: "Main", bundle: frequencyBundle)
        if let frequencyVc = frequencyStoryboard.instantiateViewController(withIdentifier: "FrequencyViewController") as? FrequencyViewController {
            let numberOfUnits = frequencyVc.frequencies.count - 1
            for index in 0...numberOfUnits {
                originalFrequencyReversedList.append(frequencyVc.frequencies[(frequencyVc.frequencies.endIndex-1) - index].title)
            }
        }
        
        XCTAssertEqual(originalFrequencyReversedList, frequencyListReversed)
        
        
        // MARK: Temperature Reversed List validation
        var originalTemperatureReversedList = [String]()
        let temperatureListReversed = ["kelvin", "fahrenheit", "celsius"]
        
        let temperatureBundle = Bundle(for: TemperatureViewController.self)
        let temperatureStoryboard = UIStoryboard(name: "Main", bundle: temperatureBundle)
        if let temperatureVc = temperatureStoryboard.instantiateViewController(withIdentifier: "TemperatureViewController") as? TemperatureViewController {
            let numberOfUnits = temperatureVc.temperatures.count - 1
            for index in 0...numberOfUnits {
                originalTemperatureReversedList.append(temperatureVc.temperatures[(temperatureVc.temperatures.endIndex-1) - index].title)
            }
        }
        
        XCTAssertEqual(originalTemperatureReversedList, temperatureListReversed)
        
        
        // MARK: Weight Reversed List validation
        var originalWeightReversedList = [String]()
        let weightListReversed = ["microgram", "milligram", "ton", "ounce", "pound", "kilogram", "grams"]
                
        let weightBundle = Bundle(for: WeightViewController.self)
        let weightStoryboard = UIStoryboard(name: "Main", bundle: weightBundle)
        if let weightVc = weightStoryboard.instantiateViewController(withIdentifier: "WeightViewController") as? WeightViewController {
            let numberOfUnits = weightVc.weights.count - 1
            for index in 0...numberOfUnits {
                originalWeightReversedList.append(weightVc.weights[(weightVc.weights.endIndex-1) - index].title)
            }
        }
        
        XCTAssertEqual(originalWeightReversedList, weightListReversed)
    }
}

//
//  Distance.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum Distance: Int {
    case inch = 0, centimeter, foot, meter, mile, yard, kilometer, millimeter, micrometer, nanometer, astronomicalUnit
    
    func convertTo(distance to: Distance, value val: Double) -> Double {
        var constant = 1.0
        
        switch self {
        
        case .inch:
        
            if to == .centimeter {
                constant = 2.54
            } else if to == .foot {
                constant = 0.08333333
            } else if to == .meter {
                constant = 0.0254
            } else if to == .mile {
                constant = 1.5783e-5
            } else if to == .yard {
                constant = 0.0277778
            } else if to == .kilometer {
                constant = 2.540002032e-5
            } else if to == .millimeter {
                constant = 25.4
            } else if to == .micrometer {
                constant = 25400
            } else if to == .nanometer {
                constant = 2.54e+7
            } else if to == .astronomicalUnit {
                constant = 1.697885e-13
            }
            break
            
        case .centimeter:
            
            if to == .inch {
                constant = 0.0393701
            } else if to == .foot {
                constant = 0.0328084
            } else if to == .meter {
                constant = 0.01
            } else if to == .mile {
                constant = 6.2137e-6
            } else if to == .yard {
                constant = 0.0109361
            } else if to == .kilometer {
                constant = 1e-5
            } else if to == .millimeter {
                constant = 10
            } else if to == .micrometer {
                constant = 10000
            } else if to == .nanometer {
                constant = 1e+7
            } else if to == .astronomicalUnit {
                constant = 6.684587e-14
            }
            break
            
        case .foot:
            if to == .inch {
                constant = 12;
            } else if to == .centimeter {
                constant = 30.48
            } else if to == .meter {
                constant = 0.3048
            } else if to == .mile {
                constant = 0.000189394
            } else if to == .yard {
                constant = 0.333333
            } else if to == .kilometer {
                constant = 0.0003048
            } else if to == .millimeter {
                constant = 304.8
            } else if to == .micrometer {
                constant = 304800
            } else if to == .nanometer {
                constant = 3.048e+8
            } else if to == .astronomicalUnit {
                constant = 2.037462e-12
            }
            
            break
        case .meter:
            if to == .inch {
                constant = 39.3701
            } else if to == .centimeter {
                constant = 100
            } else if to == .foot {
                constant = 3.28084
            } else if to == .mile {
                constant = 0.000621371
            } else if to == .yard {
                constant = 1.09361
            } else if to == .kilometer {
                constant = 0.001
            } else if to == .millimeter {
                constant = 1000
            } else if to == .micrometer {
                constant = 1e+6
            } else if to == .nanometer {
                constant = 1e+9
            } else if to == .astronomicalUnit {
                constant = 6.684587e-12
            }
            break
        case .mile:
            
            if to == .inch {
                constant = 63360
            } else if to == .centimeter {
                constant = 160934
            } else if to == .foot {
                constant = 5280
            } else if to == .meter {
                constant = 1609.34
            } else if to == .yard {
                constant = 1760
            } else if to == .kilometer {
                constant = 1.60934
            } else if to == .millimeter {
                constant = 1.609e+6
            } else if to == .micrometer {
                constant = 1608999999.98412
            } else if to == .nanometer {
                constant = 1608999999984.1196289
            } else if to == .astronomicalUnit {
                constant = 1.07578e-8
            }
            break
        case .yard:
            if to == .inch {
                constant = 36
            } else if to == .centimeter {
                constant = 91.44
            } else if to == .foot {
                constant = 3
            } else if to == .meter {
                constant = 0.9144
            } else if to == .mile {
                constant = 0.000568182
            } else if to == .kilometer {
                constant = 0.000914400292608
            } else if to == .millimeter {
                constant = 914.4
            } else if to == .micrometer {
                constant = 914400
            } else if to == .nanometer {
                constant = 9.144e+8
            } else if to == .astronomicalUnit {
                constant = 6.112386e-12
            }
            break
            
        case .kilometer:
            if to == .inch {
                constant = 39370.1
            } else if to == .centimeter {
                constant = 100000
            } else if to == .foot {
                constant = 3280.84
            } else if to == .meter {
                constant = 1000
            } else if to == .mile {
                constant = 0.621371
            } else if to == .yard {
                constant = 1093.61
            } else if to == .millimeter {
                constant = 1e+6
            } else if to == .micrometer {
                constant = 1e+9
            } else if to == .nanometer {
                constant = 1e+12
            } else if to == .astronomicalUnit {
                constant = 6.684587e-9
            }
            break
            
        case .millimeter:
            if to == .inch {
                constant = 0.0393701
            } else if to == .centimeter {
                constant = 0.1
            } else if to == .foot {
                constant = 0.00328084
            } else if to == .meter {
                constant = 0.001
            } else if to == .mile {
                constant = 6.2137e-7
            } else if to == .yard {
                constant = 0.00109361
            } else if to == .kilometer {
                constant = 1e-6
            } else if to == .micrometer {
                constant = 1000
            } else if to == .nanometer {
                constant = 1e+6
            } else if to == .astronomicalUnit {
                constant = 6.6846e-15
            }
            break
        case .micrometer:
            if to == .inch {
                constant = 3.937e-5
            } else if to == .centimeter {
                constant = 1e-4
            } else if to == .foot {
                constant = 3.2808e-6
            } else if to == .meter {
                constant = 1e-6
            } else if to == .mile {
                constant = 6.2137e-10
            } else if to == .yard {
                constant = 1.0936e-6
            } else if to == .kilometer {
                constant = 1e-9
            } else if to == .millimeter {
                constant = 0.001
            } else if to == .nanometer {
                constant = 1000
            } else if to == .astronomicalUnit {
                constant = 6.6845871226706e-18
            }
            break
        case .nanometer:
            if to == .inch {
                constant = 3.937e-8
            } else if to == .centimeter {
                constant = 1e-7
            } else if to == .foot {
                constant = 3.2808e-9
            } else if to == .meter {
                constant = 1e-9
            } else if to == .mile {
                constant = 6.2137e-13
            } else if to == .yard {
                constant = 1.0936e-9
            } else if to == .kilometer {
                constant = 1e-12
            } else if to == .millimeter {
                constant = 1e-6
            } else if to == .micrometer {
                constant = 0.001
            } else if to == .astronomicalUnit {
                constant = 6.6845871226706e-21
            }
            break
        case .astronomicalUnit:
            if to == .inch {
                constant = 5.88968e12
            } else if to == .centimeter {
                constant = 1.495979e13
            } else if to == .foot {
                constant = 490806700000
            } else if to == .meter {
                constant = 149597900000
            } else if to == .mile {
                constant = 92955810
            } else if to == .yard {
                constant = 163602200000
            } else if to == .kilometer {
                constant = 149597900
            } else if to == .millimeter {
                constant = 1.49597870691e14
            } else if to == .micrometer {
                constant = 1.49597870691e17
            } else if to == .nanometer {
                constant = 1.49597870691e20
            }
            break
        }
        
        return val * constant
    }
    
    static func fromString(_ string: String) -> Distance? {
        if string == "inch" {
            return .inch
        } else if string == "centimeter" {
            return .centimeter
        } else if string == "foot" {
            return .foot
        } else if string == "meter" {
            return .meter
        } else if string == "mile" {
            return .mile
        } else if string == "kilometer" {
            return .kilometer
        } else if string == "yard" {
            return .yard
        } else if string == "millimeter" {
            return .millimeter
        } else if string == "micrometer" {
            return .micrometer
        } else if string == "nanometer" {
            return .nanometer
        } else if string == "astronomical unit" {
            return .astronomicalUnit
        } else {
            return nil
        }
    }
    
    func stringValue() -> String {
        switch self {
        case .inch:
            return "inch"
        case .centimeter:
            return "centimeter"
        case .foot:
            return "foot"
        case .meter:
            return "meter"
        case .mile:
            return "mile"
        case .yard:
            return "yard"
        case .kilometer:
            return "kilometer"
        case .millimeter:
            return "millimeter"
        case .micrometer:
            return "micrometer"
        case .nanometer:
            return "nanometer"
        case .astronomicalUnit:
            return "astronomical unit"
        }
    }
    
    static func toList() -> [String] {
        var i = 0
        var list = [String]()
        while let distance = Distance(rawValue: i) {
            list.append(distance.stringValue())
            i = i + 1
        }
        return list
    }
}


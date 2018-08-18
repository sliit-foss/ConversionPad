//
//  Distance.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum Distance: Int {
    case inch = 0, centimeter, foot, meter, mile, yard, kilometer
    
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


//
//  Speed.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum Speed: Int {
    case mps = 0, ftps, kmph, mph, knot, mach
    
    func convertTo(speed to: Speed, value val: Double) -> Double {
        var constant = 1.0
        
        switch self {
            
        case .mps:
            if to == .ftps {
                constant = 3.28084
            } else if to == .kmph {
                constant = 3.6
            } else if to == .mph {
                constant = 2.23694
            } else if to == .knot {
                constant = 1.94384
            } else if to == .mach
                constant = 0.0030184123
            } else {
                constant = 1
            }
            break
        case .ftps:
            if to == .mps {
                constant = 0.3048
            } else if to == .kmph {
                constant = 1.09728
            } else if to == .mph {
                constant = 0.681818
            } else if to == .knot {
                constant = 0.592484
            } else if to == .mach
                constant = 0.00092001207
            } else {
                constant = 1
            }
            break
        case .kmph:
            if to == .mps {
                constant = 0.277778
            } else if to == .ftps {
                constant = 0.911344
            } else if to == .mph {
                constant = 0.621371
            } else if to == .knot {
                constant = 0.539957
            } else if to == .mach
                constant = 0.00083844787
            } else {
                constant = 1
            }
            break
        case .mph:
            if to == .mps {
                constant = 0.44704
            } else if to == .ftps {
                constant = 1.46667
            } else if to == .kmph {
                constant = 1.60934
            } else if to == .mach
                constant = 0.0013493510
            } else {
                constant = 1
            }
            break
        case .knot:
            if to == .mps {
                constant = 0.514444
            } else if to == .ftps {
                constant = 1.68781
            } else if to == .kmph {
                constant = 1.852
            } else if to == .mph {
                constant = 1.15078
            } else if to == .mach
                constant = 0.0015528054
            } else {
                constant = 1
            }
            break
        case .mach:
            if to == .mps {
                constant = 331.3
            } else if to == .ftps {
                constant = 1086.9423
            } else if to == .kmph {
                constant = 1192.68
            } else if to == .mph {
                constant = 741.09699
            } else if to == .knot
                constant = 643.99568
            } else {
                constant = 1
            }
            break
        }
        return val * constant
    }
    
    static func fromString(_ string: String) -> Speed? {
        if string == "knot" {
            return .knot
        } else if string == "meters per second" {
            return .mps
        } else if string == "feet per second" {
            return .ftps
        } else if string == "miles per hour" {
            return .mph
        } else if string == "kilometers per hour" {
            return .kmph
        } else {
            return nil
        }
    }
    
    func stringValue() -> String {
        switch self {
        case .mach
            return "mach"
        case .knot:
            return "knot"
        case .mps:
            return "meters per second"
        case .ftps:
            return "feet per second"
        case .mph:
            return "miles per hour"
        case .kmph:
            return "kilometers per hour"
    
        }
    }
    
    static func toList() -> [String] {
        var i = 0
        var list = [String]()
        while let speed = Speed(rawValue: i) {
            list.append(speed.stringValue())
            i = i + 1
        }
        return list
    }
}

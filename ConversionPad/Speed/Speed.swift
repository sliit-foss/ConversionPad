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
                constant = SpeedConst.mps.toftps
            } else if to == .kmph {
                constant = SpeedConst.mps.tokmph
            } else if to == .mph {
                constant = SpeedConst.mps.tomph
            } else if to == .knot {
                constant = SpeedConst.mps.toknot
            } else if to == .mach
                constant = 0.0030184123
            } else {
                constant = 1
            }
            break
        case .ftps:
            if to == .mps {
                constant = SpeedConst.ftps.tomps
            } else if to == .kmph {
                constant = SpeedConst.ftps.tokmph
            } else if to == .mph {
                constant = SpeedConst.ftps.tomph
            } else if to == .knot {
                constant = SpeedConst.ftps.toknot
            } else if to == .mach
                constant = 0.00092001207
            } else {
                constant = 1
            }
            break
        case .kmph:
            if to == .mps {
                constant = SpeedConst.kmph.tomps
            } else if to == .ftps {
                constant = SpeedConst.kmph.toftps
            } else if to == .mph {
                constant = SpeedConst.kmph.tomph
            } else if to == .knot {
                constant = SpeedConst.kmph.toknot
            } else if to == .mach
                constant = 0.00083844787
            } else {
                constant = 1
            }
            break
        case .mph:
            if to == .mps {
                constant = SpeedConst.mph.tomps
            } else if to == .ftps {
                constant = SpeedConst.mph.toftps
            } else if to == .kmph {
                constant = SpeedConst.mph.tokmph
            } else if to == .knot {
                constant = SpeedConst.mph.toknot
            } else if to == .mach
                constant = 0.0013493510
            } else {
                constant = 1
            }
            break
        case .knot:
            if to == .mps {
                constant = SpeedConst.knot.tomps
            } else if to == .ftps {
                constant = SpeedConst.knot.toftps
            } else if to == .kmph {
                constant = SpeedConst.knot.tokmph
            } else if to == .mph {
                constant = SpeedConst.knot.tomph
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

//
//  Speed.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum Speed: String, CaseIterable {
    case mps = "meters per second"
    case ftps = "feet per second"
    case knot = "knot"
    case mph = "miles per hour"
    case mach = "mach"
    case kmph = "kilometers per hour"
    
    var title: String {
        return self.rawValue
    }
    
    func convert(_ value: Double, to speed: Speed) -> Double {
        var constant = 1.0
        
        switch self {
            
        case .mps:
            if speed == .ftps {
                constant = SpeedConst.mps.toftps
            } else if speed == .kmph {
                constant = SpeedConst.mps.tokmph
            } else if speed == .mph {
                constant = SpeedConst.mps.tomph
            } else if speed == .knot {
                constant = SpeedConst.mps.toknot
            } else if speed == .mach {
                constant = SpeedConst.mps.toMach
            } else {
                constant = 1
            }
            break
        case .ftps:
            if speed == .mps {
                constant = SpeedConst.ftps.tomps
            } else if speed == .kmph {
                constant = SpeedConst.ftps.tokmph
            } else if speed == .mph {
                constant = SpeedConst.ftps.tomph
            } else if speed == .knot {
                constant = SpeedConst.ftps.toknot
            } else if speed == .mach {
                constant = SpeedConst.ftps.toMach
            } else {
                constant = 1
            }
            break
        case .kmph:
            if speed == .mps {
                constant = SpeedConst.kmph.tomps
            } else if speed == .ftps {
                constant = SpeedConst.kmph.toftps
            } else if speed == .mph {
                constant = SpeedConst.kmph.tomph
            } else if speed == .knot {
                constant = SpeedConst.kmph.toknot
            } else if speed == .mach {
                constant = SpeedConst.kmph.toMach
            } else {
                constant = 1
            }
            break
        case .mph:
            if speed == .mps {
                constant = SpeedConst.mph.tomps
            } else if speed == .ftps {
                constant = SpeedConst.mph.toftps
            } else if speed == .kmph {
                constant = SpeedConst.mph.tokmph
            } else if speed == .knot {
                constant = SpeedConst.mph.toknot
            } else if speed == .mach {
                constant = SpeedConst.mph.toMach
            } else {
                constant = 1
            }
            break
        case .knot:
            if speed == .mps {
                constant = SpeedConst.knot.tomps
            } else if speed == .ftps {
                constant = SpeedConst.knot.toftps
            } else if speed == .kmph {
                constant = SpeedConst.knot.tokmph
            } else if speed == .mph {
                constant = SpeedConst.knot.tomph
            } else if speed == .mach {
                constant = SpeedConst.knot.toMach
            } else {
                constant = 1
            }
            break
        case .mach:
            if speed == .mps {
                constant = SpeedConst.mach.tomps
            } else if speed == .ftps {
                constant = SpeedConst.mach.toftps
            } else if speed == .kmph {
                constant = SpeedConst.mach.tokmph
            } else if speed == .mph {
                constant = SpeedConst.mach.tomph
            } else if speed == .knot {
                constant = SpeedConst.mach.toknot
            } else {
                constant = 1
            }
            break
        }
        return value * constant
    }
}

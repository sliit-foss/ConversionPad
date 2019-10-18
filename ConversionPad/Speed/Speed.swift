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
                constant = SpeedConstant.mps.toftps
            } else if speed == .kmph {
                constant = SpeedConstant.mps.tokmph
            } else if speed == .mph {
                constant = SpeedConstant.mps.tomph
            } else if speed == .knot {
                constant = SpeedConstant.mps.toknot
            } else if speed == .mach {
                constant = SpeedConstant.mps.toMach
            } else {
                constant = 1
            }
            break
        case .ftps:
            if speed == .mps {
                constant = SpeedConstant.ftps.tomps
            } else if speed == .kmph {
                constant = SpeedConstant.ftps.tokmph
            } else if speed == .mph {
                constant = SpeedConstant.ftps.tomph
            } else if speed == .knot {
                constant = SpeedConstant.ftps.toknot
            } else if speed == .mach {
                constant = SpeedConstant.ftps.toMach
            } else {
                constant = 1
            }
            break
        case .kmph:
            if speed == .mps {
                constant = SpeedConstant.kmph.tomps
            } else if speed == .ftps {
                constant = SpeedConstant.kmph.toftps
            } else if speed == .mph {
                constant = SpeedConstant.kmph.tomph
            } else if speed == .knot {
                constant = SpeedConstant.kmph.toknot
            } else if speed == .mach {
                constant = SpeedConstant.kmph.toMach
            } else {
                constant = 1
            }
            break
        case .mph:
            if speed == .mps {
                constant = SpeedConstant.mph.tomps
            } else if speed == .ftps {
                constant = SpeedConstant.mph.toftps
            } else if speed == .kmph {
                constant = SpeedConstant.mph.tokmph
            } else if speed == .knot {
                constant = SpeedConstant.mph.toknot
            } else if speed == .mach {
                constant = SpeedConstant.mph.toMach
            } else {
                constant = 1
            }
            break
        case .knot:
            if speed == .mps {
                constant = SpeedConstant.knot.tomps
            } else if speed == .ftps {
                constant = SpeedConstant.knot.toftps
            } else if speed == .kmph {
                constant = SpeedConstant.knot.tokmph
            } else if speed == .mph {
                constant = SpeedConstant.knot.tomph
            } else if speed == .mach {
                constant = SpeedConstant.knot.toMach
            } else {
                constant = 1
            }
            break
        case .mach:
            if speed == .mps {
                constant = SpeedConstant.mach.tomps
            } else if speed == .ftps {
                constant = SpeedConstant.mach.toftps
            } else if speed == .kmph {
                constant = SpeedConstant.mach.tokmph
            } else if speed == .mph {
                constant = SpeedConstant.mach.tomph
            } else if speed == .knot {
                constant = SpeedConstant.mach.toknot
            } else {
                constant = 1
            }
            break
        }
        return value * constant
    }
}

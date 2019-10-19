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
                constant = SpeedConstant.fromMps.toFtps
            } else if speed == .kmph {
                constant = SpeedConstant.fromMps.toKmph
            } else if speed == .mph {
                constant = SpeedConstant.fromMps.toMph
            } else if speed == .knot {
                constant = SpeedConstant.fromMps.toKnot
            } else if speed == .mach {
                constant = SpeedConstant.fromMps.toMach
            } else {
                constant = 1
            }
            break
        case .ftps:
            if speed == .mps {
                constant = SpeedConstant.fromFtps.toMps
            } else if speed == .kmph {
                constant = SpeedConstant.fromFtps.toKmph
            } else if speed == .mph {
                constant = SpeedConstant.fromFtps.toMph
            } else if speed == .knot {
                constant = SpeedConstant.fromFtps.toKnot
            } else if speed == .mach {
                constant = SpeedConstant.fromFtps.toMach
            } else {
                constant = 1
            }
            break
        case .kmph:
            if speed == .mps {
                constant = SpeedConstant.fromKmph.toMps
            } else if speed == .ftps {
                constant = SpeedConstant.fromKmph.toFtps
            } else if speed == .mph {
                constant = SpeedConstant.fromKmph.toMph
            } else if speed == .knot {
                constant = SpeedConstant.fromKmph.toKnot
            } else if speed == .mach {
                constant = SpeedConstant.fromKmph.toMach
            } else {
                constant = 1
            }
            break
        case .mph:
            if speed == .mps {
                constant = SpeedConstant.fromMph.toMps
            } else if speed == .ftps {
                constant = SpeedConstant.fromMph.toFtps
            } else if speed == .kmph {
                constant = SpeedConstant.fromMph.toKmph
            } else if speed == .knot {
                constant = SpeedConstant.fromMph.toKnot
            } else if speed == .mach {
                constant = SpeedConstant.fromMph.toMach
            } else {
                constant = 1
            }
            break
        case .knot:
            if speed == .mps {
                constant = SpeedConstant.fromKnot.toMps
            } else if speed == .ftps {
                constant = SpeedConstant.fromKnot.toFtps
            } else if speed == .kmph {
                constant = SpeedConstant.fromKnot.toKmph
            } else if speed == .mph {
                constant = SpeedConstant.fromKnot.toMph
            } else if speed == .mach {
                constant = SpeedConstant.fromKnot.toMach
            } else {
                constant = 1
            }
            break
        case .mach:
            if speed == .mps {
                constant = SpeedConstant.fromMach.toMps
            } else if speed == .ftps {
                constant = SpeedConstant.fromMach.toFtps
            } else if speed == .kmph {
                constant = SpeedConstant.fromMach.toKmph
            } else if speed == .mph {
                constant = SpeedConstant.fromMach.toMph
            } else if speed == .knot {
                constant = SpeedConstant.fromMach.toKnot
            } else {
                constant = 1
            }
            break
        }
        return value * constant
    }
}

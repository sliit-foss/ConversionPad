//
//  Weight.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum Weight: Int {
    case grams = 0, kilogram, pound, ounce, ton, milligram, microgram
    
    func convertTo(weight to: Weight, value val: Double) -> Double {
        var constant = 1.0
        
        switch self {
            
        case .grams:
            if to == .kilogram {
                constant = WeightConst.gram.tokilogram
            } else if to == .pound {
                constant = WeightConst.gram.topound
            } else if to == .ounce {
                constant = WeightConst.gram.toounce
            } else if to == .ton {
                constant = WeightConst.gram.toton
            } else if to == .milligram {
                constant = WeightConst.gram.tomilligram
            } else if to == .microgram {
                constant = WeightConst.gram.tomicrogram
            } else {
                constant = 1
            }
            break
        case .kilogram:
            if to == .grams {
                constant = WeightConst.kilogram.togram
            } else if to == .pound {
                constant = WeightConst.kilogram.topound
            } else if to == .ounce {
                constant = WeightConst.kilogram.toounce
            } else if to == .ton {
                constant = WeightConst.kilogram.toton
            } else if to == .milligram {
                constant = WeightConst.kilogram.tomilligram
            } else if to == .microgram {
                constant = WeightConst.kilogram.tomicrogram
            } else {
                constant = 1
            }
            break
        case .pound:
            if to == .grams {
                constant = WeightConst.pound.togram
            } else if to == .kilogram {
                constant = WeightConst.pound.tokilogram
            } else if to == .ounce {
                constant = WeightConst.pound.toounce
            } else if to == .ton {
                constant = WeightConst.pound.toton
            } else if to == .milligram {
                constant = WeightConst.pound.tomilligram
            } else if to == .microgram {
                constant = WeightConst.pound.tomicrogram
            } else {
                constant = 1
            }
            break
        case .ounce:
            if to == .grams {
                constant = WeightConst.ounce.togram
            } else if to == .kilogram {
                constant = WeightConst.ounce.tokilogram
            } else if to == .pound {
                constant = WeightConst.ounce.topound
            } else if to == .ton {
                constant = WeightConst.ounce.toton
            } else if to == .milligram {
                constant = WeightConst.ounce.tomilligram
            } else if to == .microgram {
                constant = WeightConst.ounce.tomicrogram
            } else {
                constant = 1
            }
            break
        case .ton:
            if to == .grams {
                constant = WeightConst.ton.togram
            } else if to == .kilogram {
                constant = WeightConst.ton.tokilogram
            } else if to == .pound {
                constant = WeightConst.ton.topound
            } else if to == .ounce {
                constant = WeightConst.ton.toounce
            } else if to == .milligram {
                constant = WeightConst.ton.tomilligram
            } else if to == .microgram {
                constant = WeightConst.ton.tomicrogram
            } else {
                constant = 1
            }
            break
        case .milligram:
            if to == .grams {
                constant = WeightConst.milligram.togram
            } else if to == .kilogram {
                constant = WeightConst.milligram.tokilogram
            } else if to == .pound {
                constant = WeightConst.milligram.topound
            } else if to == .ounce {
                constant = WeightConst.milligram.toounce
            } else if to == .ton {
                constant = WeightConst.milligram.toton
            } else if to == .microgram {
                constant = WeightConst.milligram.tomicrogram
            } else {
                constant = 1
            }
        case .microgram:
            if to == .grams {
                constant = WeightConst.microgram.togram
            } else if to == .kilogram {
                constant = WeightConst.microgram.tokilogram
            } else if to == .pound {
                constant = WeightConst.microgram.topound
            } else if to == .ounce {
                constant = WeightConst.microgram.toounce
            } else if to == .ton {
                constant = WeightConst.microgram.toton
            } else if to == .milligram {
                constant = WeightConst.microgram.tomilligram
            } else {
                constant = 1
            }
        }
        return val * constant
    }
 
    static func fromString(_ string: String) -> Weight? {
        if string == "grams" {
            return .grams
        } else if string == "kilogram" {
            return .kilogram
        } else if string == "pound" {
            return .pound
        } else if string == "ounce" {
            return .ounce
        } else if string == "ton" {
            return .ton
        } else if string == "milligram" {
            return .milligram
        } else if string == "microgram" {
            return .microgram
        } else {
            return nil
        }
    }
    
    func stringValue() -> String {
        switch self {
        case .grams:
            return "grams"
        case .kilogram:
            return "kilogram"
        case .pound:
            return "pound"
        case .ounce:
            return "ounce"
        case .ton:
            return "ton"
        case .milligram:
            return "milligram"
        case .microgram:
            return "microgram"
        }
    }
    
    static func toList() -> [String] {
        var i = 0
        var list = [String]()
        while let weight = Weight(rawValue: i) {
            list.append(weight.stringValue())
            i = i + 1
        }
        return list
    }
}

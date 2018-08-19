//
//  Weight.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum Weight: Int {
    case grams = 0, kilogram, pound, ounce, ton
    
    func convertTo(weight to: Weight, value val: Double) -> Double {
        var constant = 1.0
        
        switch self {
            
        case .grams:
            if to == .kilogram {
                constant = 0.001
            } else if to == .pound {
                constant = 0.00220462
            } else if to == .ounce {
                constant = 0.035274
            } else if to == .ton {
                constant = 1.0000010787e-6
            } else {
                constant = 1
            }
            break
        case .kilogram:
            if to == .grams {
                constant = 1000
            } else if to == .pound {
                constant = 2.20462
            } else if to == .ounce {
                constant = 35.274
            } else if to == .ton {
                constant = 0.001
            } else {
                constant = 1
            }
            break
        case .pound:
            if to == .grams {
                constant = 453.592
            } else if to == .kilogram {
                constant = 0.453592
            } else if to == .ounce {
                constant = 16
            } else if to == .ton {
                constant = 0.000453592
            } else {
                constant = 1
            }
            break
        case .ounce:
            if to == .grams {
                constant = 28.3495
            } else if to == .kilogram {
                constant = 0.0283495
            } else if to == .pound {
                constant = 0.0625
            } else if to == .ton {
                constant = 2.835e-5
            } else {
                constant = 1
            }
            break
        case .ton:
            if to == .grams {
                constant = 1e+6
            } else if to == .kilogram {
                constant = 1000
            } else if to == .pound {
                constant = 2204.62
            } else if to == .ounce {
                constant = 35274
            } else {
                constant = 1
            }
            break
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

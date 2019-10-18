//
//  Weight.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum Weight: String, CaseIterable {
    case grams, kilogram, pound, ounce, ton, milligram, microgram
    
    var title: String {
        return self.rawValue
    }
    
    func convert(_ value: Double, to weight: Weight) -> Double {
        var constant = 1.0
        
        switch self {
            
        case .grams:
            if weight == .kilogram {
                constant = WeightConstant.gram.tokilogram
            } else if weight == .pound {
                constant = WeightConstant.gram.topound
            } else if weight == .ounce {
                constant = WeightConstant.gram.toounce
            } else if weight == .ton {
                constant = WeightConstant.gram.toton
            } else if weight == .milligram {
                constant = WeightConstant.gram.tomilligram
            } else if weight == .microgram {
                constant = WeightConstant.gram.tomicrogram
            } else {
                constant = 1
            }
            break
        case .kilogram:
            if weight == .grams {
                constant = WeightConstant.kilogram.togram
            } else if weight == .pound {
                constant = WeightConstant.kilogram.topound
            } else if weight == .ounce {
                constant = WeightConstant.kilogram.toounce
            } else if weight == .ton {
                constant = WeightConstant.kilogram.toton
            } else if weight == .milligram {
                constant = WeightConstant.kilogram.tomilligram
            } else if weight == .microgram {
                constant = WeightConstant.kilogram.tomicrogram
            } else {
                constant = 1
            }
            break
        case .pound:
            if weight == .grams {
                constant = WeightConstant.pound.togram
            } else if weight == .kilogram {
                constant = WeightConstant.pound.tokilogram
            } else if weight == .ounce {
                constant = WeightConstant.pound.toounce
            } else if weight == .ton {
                constant = WeightConstant.pound.toton
            } else if weight == .milligram {
                constant = WeightConstant.pound.tomilligram
            } else if weight == .microgram {
                constant = WeightConstant.pound.tomicrogram
            } else {
                constant = 1
            }
            break
        case .ounce:
            if weight == .grams {
                constant = WeightConstant.ounce.togram
            } else if weight == .kilogram {
                constant = WeightConstant.ounce.tokilogram
            } else if weight == .pound {
                constant = WeightConstant.ounce.topound
            } else if weight == .ton {
                constant = WeightConstant.ounce.toton
            } else if weight == .milligram {
                constant = WeightConstant.ounce.tomilligram
            } else if weight == .microgram {
                constant = WeightConstant.ounce.tomicrogram
            } else {
                constant = 1
            }
            break
        case .ton:
            if weight == .grams {
                constant = WeightConstant.ton.togram
            } else if weight == .kilogram {
                constant = WeightConstant.ton.tokilogram
            } else if weight == .pound {
                constant = WeightConstant.ton.topound
            } else if weight == .ounce {
                constant = WeightConstant.ton.toounce
            } else if weight == .milligram {
                constant = WeightConstant.ton.tomilligram
            } else if weight == .microgram {
                constant = WeightConstant.ton.tomicrogram
            } else {
                constant = 1
            }
            break
        case .milligram:
            if weight == .grams {
                constant = WeightConstant.milligram.togram
            } else if weight == .kilogram {
                constant = WeightConstant.milligram.tokilogram
            } else if weight == .pound {
                constant = WeightConstant.milligram.topound
            } else if weight == .ounce {
                constant = WeightConstant.milligram.toounce
            } else if weight == .ton {
                constant = WeightConstant.milligram.toton
            } else if weight == .microgram {
                constant = WeightConstant.milligram.tomicrogram
            } else {
                constant = 1
            }
        case .microgram:
            if weight == .grams {
                constant = WeightConstant.microgram.togram
            } else if weight == .kilogram {
                constant = WeightConstant.microgram.tokilogram
            } else if weight == .pound {
                constant = WeightConstant.microgram.topound
            } else if weight == .ounce {
                constant = WeightConstant.microgram.toounce
            } else if weight == .ton {
                constant = WeightConstant.microgram.toton
            } else if weight == .milligram {
                constant = WeightConstant.microgram.tomilligram
            } else {
                constant = 1
            }
        }
        return value * constant
    }
}

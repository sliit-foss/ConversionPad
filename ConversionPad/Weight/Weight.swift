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
                constant = WeightConst.gram.tokilogram
            } else if weight == .pound {
                constant = WeightConst.gram.topound
            } else if weight == .ounce {
                constant = WeightConst.gram.toounce
            } else if weight == .ton {
                constant = WeightConst.gram.toton
            } else if weight == .milligram {
                constant = WeightConst.gram.tomilligram
            } else if weight == .microgram {
                constant = WeightConst.gram.tomicrogram
            } else {
                constant = 1
            }
            break
        case .kilogram:
            if weight == .grams {
                constant = WeightConst.kilogram.togram
            } else if weight == .pound {
                constant = WeightConst.kilogram.topound
            } else if weight == .ounce {
                constant = WeightConst.kilogram.toounce
            } else if weight == .ton {
                constant = WeightConst.kilogram.toton
            } else if weight == .milligram {
                constant = WeightConst.kilogram.tomilligram
            } else if weight == .microgram {
                constant = WeightConst.kilogram.tomicrogram
            } else {
                constant = 1
            }
            break
        case .pound:
            if weight == .grams {
                constant = WeightConst.pound.togram
            } else if weight == .kilogram {
                constant = WeightConst.pound.tokilogram
            } else if weight == .ounce {
                constant = WeightConst.pound.toounce
            } else if weight == .ton {
                constant = WeightConst.pound.toton
            } else if weight == .milligram {
                constant = WeightConst.pound.tomilligram
            } else if weight == .microgram {
                constant = WeightConst.pound.tomicrogram
            } else {
                constant = 1
            }
            break
        case .ounce:
            if weight == .grams {
                constant = WeightConst.ounce.togram
            } else if weight == .kilogram {
                constant = WeightConst.ounce.tokilogram
            } else if weight == .pound {
                constant = WeightConst.ounce.topound
            } else if weight == .ton {
                constant = WeightConst.ounce.toton
            } else if weight == .milligram {
                constant = WeightConst.ounce.tomilligram
            } else if weight == .microgram {
                constant = WeightConst.ounce.tomicrogram
            } else {
                constant = 1
            }
            break
        case .ton:
            if weight == .grams {
                constant = WeightConst.ton.togram
            } else if weight == .kilogram {
                constant = WeightConst.ton.tokilogram
            } else if weight == .pound {
                constant = WeightConst.ton.topound
            } else if weight == .ounce {
                constant = WeightConst.ton.toounce
            } else if weight == .milligram {
                constant = WeightConst.ton.tomilligram
            } else if weight == .microgram {
                constant = WeightConst.ton.tomicrogram
            } else {
                constant = 1
            }
            break
        case .milligram:
            if weight == .grams {
                constant = WeightConst.milligram.togram
            } else if weight == .kilogram {
                constant = WeightConst.milligram.tokilogram
            } else if weight == .pound {
                constant = WeightConst.milligram.topound
            } else if weight == .ounce {
                constant = WeightConst.milligram.toounce
            } else if weight == .ton {
                constant = WeightConst.milligram.toton
            } else if weight == .microgram {
                constant = WeightConst.milligram.tomicrogram
            } else {
                constant = 1
            }
        case .microgram:
            if weight == .grams {
                constant = WeightConst.microgram.togram
            } else if weight == .kilogram {
                constant = WeightConst.microgram.tokilogram
            } else if weight == .pound {
                constant = WeightConst.microgram.topound
            } else if weight == .ounce {
                constant = WeightConst.microgram.toounce
            } else if weight == .ton {
                constant = WeightConst.microgram.toton
            } else if weight == .milligram {
                constant = WeightConst.microgram.tomilligram
            } else {
                constant = 1
            }
        }
        return value * constant
    }
}

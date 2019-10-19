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
                constant = WeightConstant.fromGram.toKilogram
            } else if weight == .pound {
                constant = WeightConstant.fromGram.toPound
            } else if weight == .ounce {
                constant = WeightConstant.fromGram.toOunce
            } else if weight == .ton {
                constant = WeightConstant.fromGram.toTon
            } else if weight == .milligram {
                constant = WeightConstant.fromGram.toMilligram
            } else if weight == .microgram {
                constant = WeightConstant.fromGram.toMicrogram
            } else {
                constant = 1
            }
            break
        case .kilogram:
            if weight == .grams {
                constant = WeightConstant.fromKilogram.toGram
            } else if weight == .pound {
                constant = WeightConstant.fromKilogram.toPound
            } else if weight == .ounce {
                constant = WeightConstant.fromKilogram.toOunce
            } else if weight == .ton {
                constant = WeightConstant.fromKilogram.toTon
            } else if weight == .milligram {
                constant = WeightConstant.fromKilogram.toMilligram
            } else if weight == .microgram {
                constant = WeightConstant.fromKilogram.toMicrogram
            } else {
                constant = 1
            }
            break
        case .pound:
            if weight == .grams {
                constant = WeightConstant.fromPound.toGram
            } else if weight == .kilogram {
                constant = WeightConstant.fromPound.toKilogram
            } else if weight == .ounce {
                constant = WeightConstant.fromPound.toOunce
            } else if weight == .ton {
                constant = WeightConstant.fromPound.toTon
            } else if weight == .milligram {
                constant = WeightConstant.fromPound.toMilligram
            } else if weight == .microgram {
                constant = WeightConstant.fromPound.toMicrogram
            } else {
                constant = 1
            }
            break
        case .ounce:
            if weight == .grams {
                constant = WeightConstant.fromOunce.toGram
            } else if weight == .kilogram {
                constant = WeightConstant.fromOunce.toKilogram
            } else if weight == .pound {
                constant = WeightConstant.fromOunce.toPound
            } else if weight == .ton {
                constant = WeightConstant.fromOunce.toTon
            } else if weight == .milligram {
                constant = WeightConstant.fromOunce.toMilligram
            } else if weight == .microgram {
                constant = WeightConstant.fromOunce.toMicrogram
            } else {
                constant = 1
            }
            break
        case .ton:
            if weight == .grams {
                constant = WeightConstant.fromTon.toGram
            } else if weight == .kilogram {
                constant = WeightConstant.fromTon.toKilogram
            } else if weight == .pound {
                constant = WeightConstant.fromTon.toPound
            } else if weight == .ounce {
                constant = WeightConstant.fromTon.toOunce
            } else if weight == .milligram {
                constant = WeightConstant.fromTon.toMilligram
            } else if weight == .microgram {
                constant = WeightConstant.fromTon.toMicrogram
            } else {
                constant = 1
            }
            break
        case .milligram:
            if weight == .grams {
                constant = WeightConstant.fromMilligram.toGram
            } else if weight == .kilogram {
                constant = WeightConstant.fromMilligram.toKilogram
            } else if weight == .pound {
                constant = WeightConstant.fromMilligram.toPound
            } else if weight == .ounce {
                constant = WeightConstant.fromMilligram.toOunce
            } else if weight == .ton {
                constant = WeightConstant.fromMilligram.toTon
            } else if weight == .microgram {
                constant = WeightConstant.fromMilligram.toMicrogram
            } else {
                constant = 1
            }
        case .microgram:
            if weight == .grams {
                constant = WeightConstant.fromMicrogram.toGram
            } else if weight == .kilogram {
                constant = WeightConstant.fromMicrogram.toKilogram
            } else if weight == .pound {
                constant = WeightConstant.fromMicrogram.toPound
            } else if weight == .ounce {
                constant = WeightConstant.fromMicrogram.toOunce
            } else if weight == .ton {
                constant = WeightConstant.fromMicrogram.toTon
            } else if weight == .milligram {
                constant = WeightConstant.fromMicrogram.toMilligram
            } else {
                constant = 1
            }
        }
        return value * constant
    }
}

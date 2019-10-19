//
//  WeightConstant.swift
//  ConversionPad
//
//  Created by Lareen Melo on 10/17/19.
//  Copyright © 2019 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum WeightConstant {
    enum fromGram {
        static let toGram = 1
        static let toKilogram = 0.001
        static let toPound = 0.00220462
        static let toOunce = 0.035274
        static let toTon = 1.0000010787e-6
        static let toMilligram = 1000.0
        static let toMicrogram = 1e+6
    }
    
    enum fromKilogram {
        static let toGram = 1000.0
        static let toKilogram = 1
        static let toPound = 2.20462
        static let toOunce = 35.274
        static let toTon = 0.001
        static let toMilligram = 1e+6
        static let toMicrogram = 1e+9
    }
    
    enum fromPound {
        static let toGram = 453.592
        static let toKilogram = 0.453592
        static let toPound = 1.0
        static let toOunce = 16.0
        static let toTon = 0.000453592
        static let toMilligram = 453592.0
        static let toMicrogram = 453591999.86863
    }
    
    enum fromOunce {
        static let toGram = 28.3495
        static let toKilogram = 0.0283495
        static let toPound = 0.0625
        static let toOunce = 1
        static let toTon = 2.835e-5
        static let toMilligram = 28349.5
        static let toMicrogram = 2.835e+7
    }
    
    enum fromTon {
        static let toGram = 1e+6
        static let toKilogram = 1000.0
        static let toPound = 2204.62
        static let toOunce = 35274.0
        static let toTon = 1
        static let toMilligram = 1e+9
        static let toMicrogram = 1e+12
    }
    
    enum fromMilligram {
        static let toGram = 0.001
        static let toKilogram = 1e-6
        static let toPound = 2.2046e-6
        static let toOunce = 3.5274e-5
        static let toTon = 1e-9
        static let toMilligram = 1
        static let toMicrogram = 1000.0
    }
    
    enum fromMicrogram {
        static let toGram = 1e-6
        static let toKilogram = 1e-9
        static let toPound = 2.2046e-9
        static let toOunce = 3.5274e-8
        static let toTon = 1e-12
        static let toMilligram = 0.001
        static let toMicrogram = 1
    }
}

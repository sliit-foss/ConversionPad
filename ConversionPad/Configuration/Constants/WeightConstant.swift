//
//  WeightConstant.swift
//  ConversionPad
//
//  Created by Lareen Melo on 10/17/19.
//  Copyright © 2019 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum WeightConstant {
    enum gram {
        static let togram = 1
        static let tokilogram = 0.001
        static let topound = 0.00220462
        static let toounce = 0.035274
        static let toton = 1.0000010787e-6
        static let tomilligram = 1000.0
        static let tomicrogram = 1e+6
    }
    
    enum kilogram {
        static let togram = 1000.0
        static let tokilogram = 1
        static let topound = 2.20462
        static let toounce = 35.274
        static let toton = 0.001
        static let tomilligram = 1e+6
        static let tomicrogram = 1e+9
    }
    
    enum pound {
        static let togram = 453.592
        static let tokilogram = 0.453592
        static let topound = 1.0
        static let toounce = 16.0
        static let toton = 0.000453592
        static let tomilligram = 453592.0
        static let tomicrogram = 453591999.86863
    }
    
    enum ounce {
        static let togram = 28.3495
        static let tokilogram = 0.0283495
        static let topound = 0.0625
        static let toounce = 1
        static let toton = 2.835e-5
        static let tomilligram = 28349.5
        static let tomicrogram = 2.835e+7
    }
    
    enum ton {
        static let togram = 1e+6
        static let tokilogram = 1000.0
        static let topound = 2204.62
        static let toounce = 35274.0
        static let toton = 1
        static let tomilligram = 1e+9
        static let tomicrogram = 1e+12
    }
    
    enum milligram {
        static let togram = 0.001
        static let tokilogram = 1e-6
        static let topound = 2.2046e-6
        static let toounce = 3.5274e-5
        static let toton = 1e-9
        static let tomilligram = 1
        static let tomicrogram = 1000.0
    }
    
    enum microgram {
        static let togram = 1e-6
        static let tokilogram = 1e-9
        static let topound = 2.2046e-9
        static let toounce = 3.5274e-8
        static let toton = 1e-12
        static let tomilligram = 0.001
        static let tomicrogram = 1
    }
}

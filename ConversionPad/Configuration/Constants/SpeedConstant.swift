//
//  SpeedConstant.swift
//  ConversionPad
//
//  Created by Lareen Melo on 10/17/19.
//  Copyright © 2019 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum SpeedConstant {
    enum fromMps {
        static let toMps = 1
        static let toFtps = 3.28084
        static let toKmph = 3.6
        static let toMph = 2.23694
        static let toKnot = 1.94384
        static let toMach = 0.0030184123
    }
    
    enum fromFtps {
        static let toMps = 0.3048
        static let toFtps = 1
        static let toKmph = 1.09728
        static let toMph = 0.681818
        static let toKnot = 0.592484
        static let toMach = 0.00092001207
    }
    
    enum fromKmph {
        static let toMps = 0.277778
        static let toFtps = 0.911344
        static let toKmph = 1
        static let toMph = 0.621371
        static let toKnot = 0.539957
        static let toMach = 0.00083844787
    }
    
    enum fromMph {
        static let toMps = 0.44704
        static let toFtps = 1.46667
        static let toKmph = 1.60934
        static let toMph = 1
        static let toKnot = 0.868976
        static let toMach = 0.0013493510
    }
    
    enum fromKnot {
        static let toMps = 0.514444
        static let toFtps = 1.68781
        static let toKmph = 1.852
        static let toMph = 1.15078
        static let toKnot = 1
        static let toMach = 0.0015528054
    }
    
    enum fromMach {
        static let toMps = 343.00
        static let toFtps = 1125.33
        static let toKmph = 1234.8021
        static let toMph = 767.2704
        static let toKnot = 666.7397
        static let toMach = 1
    }
}

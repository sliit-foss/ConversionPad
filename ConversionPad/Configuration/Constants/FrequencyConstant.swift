//
//  FrequencyConstant.swift
//  ConversionPad
//
//  Created by Lareen Melo on 10/17/19.
//  Copyright © 2019 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum FrequencyConstant {
    enum fromHz {
        static let toHz = 1.0
        static let toRpm = 60.0
    }

    enum fromRpm {
        static let toHz = 0.01666666666
        static let toRpm = 1.0
    }
}

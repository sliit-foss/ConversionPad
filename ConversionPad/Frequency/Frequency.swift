//
//  Frequency.swift
//  ConversionPad
//
//  Created by Vishal on 10/27/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum Frequency: String, CaseIterable {
    case hz, rpm
    
    var title: String {
        return self.rawValue
    }
        
    func convert(_ value: Double, to frequency: Frequency) -> Double {
        var constant = 1.0
        
        switch self {
        case .hz:
            if frequency == .rpm {
                constant = FrequencyConstant.hz.rpm
            } else {
                constant = 1
            }
            break
        case .rpm:
            if frequency == .hz {
                constant = FrequencyConstant.rpm.hz
            } else {
                constant = 1
            }
            break
        }
        
        return value * constant
    }
}

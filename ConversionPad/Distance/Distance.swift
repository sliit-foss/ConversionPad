//
//  Distance.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum Distance: String, CaseIterable {
    case inch, centimeter, foot, meter, mile, yard, kilometer, millimeter, micrometer, nanometer
    
    var title: String {
        return self.rawValue
    }
            
    func convert(_ value: Double, to distance: Distance) -> Double {
        var constant = 1.0
        
        switch self {
        
        case .inch:
            if distance == .centimeter {
                constant = DistanceConstant.fromInch.toCentimeter
            } else if distance == .foot {
                constant = DistanceConstant.fromInch.toFoot
            } else if distance == .meter {
                constant = DistanceConstant.fromInch.toMeter
            } else if distance == .mile {
                constant = DistanceConstant.fromInch.toMile
            } else if distance == .yard {
                constant = DistanceConstant.fromInch.toYard
            } else if distance == .kilometer {
                constant = DistanceConstant.fromInch.toKilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.fromInch.toMillimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.fromInch.toMicrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.fromInch.toNanometer
            }
            break
            
        case .centimeter:
            if distance == .inch {
                constant = DistanceConstant.fromCentimeter.toInch
            } else if distance == .foot {
                constant = DistanceConstant.fromCentimeter.toFoot
            } else if distance == .meter {
                constant = DistanceConstant.fromCentimeter.toMeter
            } else if distance == .mile {
                constant = DistanceConstant.fromCentimeter.toMile
            } else if distance == .yard {
                constant = DistanceConstant.fromCentimeter.toYard
            } else if distance == .kilometer {
                constant = DistanceConstant.fromCentimeter.toKilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.fromCentimeter.toMillimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.fromCentimeter.toMicrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.fromCentimeter.toNanometer
            }
            break
            
        case .foot:
            if distance == .inch {
                constant = DistanceConstant.fromFoot.toInch
            } else if distance == .centimeter {
                constant = DistanceConstant.fromFoot.toCentimeter
            } else if distance == .meter {
                constant = DistanceConstant.fromFoot.toMeter
            } else if distance == .mile {
                constant = DistanceConstant.fromFoot.toMile
            } else if distance == .yard {
                constant = DistanceConstant.fromFoot.toYard
            } else if distance == .kilometer {
                constant = DistanceConstant.fromFoot.toKilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.fromFoot.toMillimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.fromFoot.toMicrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.fromFoot.toNanometer
            }
            
            break
        case .meter:
            if distance == .inch {
                constant = DistanceConstant.fromMeter.toInch
            } else if distance == .centimeter {
                constant = DistanceConstant.fromMeter.toCentimeter
            } else if distance == .foot {
                constant = DistanceConstant.fromMeter.toFoot
            } else if distance == .mile {
                constant = DistanceConstant.fromMeter.toMile
            } else if distance == .yard {
                constant = DistanceConstant.fromMeter.toYard
            } else if distance == .kilometer {
                constant = DistanceConstant.fromMeter.toKilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.fromMeter.toMillimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.fromMeter.toMicrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.fromMeter.toNanometer
            }
            break
        case .mile:
            
            if distance == .inch {
                constant = DistanceConstant.fromMile.toInch
            } else if distance == .centimeter {
                constant = DistanceConstant.fromMile.toCentimeter
            } else if distance == .foot {
                constant = DistanceConstant.fromMile.toFoot
            } else if distance == .meter {
                constant = DistanceConstant.fromMile.toMeter
            } else if distance == .yard {
                constant = DistanceConstant.fromMile.toYard
            } else if distance == .kilometer {
                constant = DistanceConstant.fromMile.toKilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.fromMile.toMillimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.fromMile.toMicrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.fromMile.toNanometer
            }
            break
        case .yard:
            if distance == .inch {
                constant = DistanceConstant.fromYard.toInch
            } else if distance == .centimeter {
                constant = DistanceConstant.fromYard.toCentimeter
            } else if distance == .foot {
                constant = DistanceConstant.fromYard.toFoot
            } else if distance == .meter {
                constant = DistanceConstant.fromYard.toMeter
            } else if distance == .mile {
                constant = DistanceConstant.fromYard.toMile
            } else if distance == .kilometer {
                constant = DistanceConstant.fromYard.toKilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.fromYard.toMillimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.fromYard.toMicrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.fromYard.toNanometer
            }
            break
            
        case .kilometer:
            if distance == .inch {
                constant = DistanceConstant.fromKilometer.toInch
            } else if distance == .centimeter {
                constant = DistanceConstant.fromKilometer.toCentimeter
            } else if distance == .foot {
                constant = DistanceConstant.fromKilometer.toFoot
            } else if distance == .meter {
                constant = DistanceConstant.fromKilometer.toMeter
            } else if distance == .mile {
                constant = DistanceConstant.fromKilometer.toMile
            } else if distance == .yard {
                constant = DistanceConstant.fromKilometer.toYard
            } else if distance == .millimeter {
                constant = DistanceConstant.fromKilometer.toMillimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.fromKilometer.toMicrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.fromKilometer.toNanometer
            }
            break
            
        case .millimeter:
            if distance == .inch {
                constant = DistanceConstant.fromMillimeter.toInch
            } else if distance == .centimeter {
                constant = DistanceConstant.fromMillimeter.toCentimeter
            } else if distance == .foot {
                constant = DistanceConstant.fromMillimeter.toFoot
            } else if distance == .meter {
                constant = DistanceConstant.fromMillimeter.toMeter
            } else if distance == .mile {
                constant = DistanceConstant.fromMillimeter.toMile
            } else if distance == .yard {
                constant = DistanceConstant.fromMillimeter.toYard
            } else if distance == .kilometer {
                constant = DistanceConstant.fromMillimeter.toKilometer
            } else if distance == .micrometer {
                constant = DistanceConstant.fromMillimeter.toMicrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.fromMillimeter.toNanometer
            }
            break
        case .micrometer:
            if distance == .inch {
                constant = DistanceConstant.fromMicrometer.toInch
            } else if distance == .centimeter {
                constant = DistanceConstant.fromMicrometer.toCentimeter
            } else if distance == .foot {
                constant = DistanceConstant.fromMicrometer.toFoot
            } else if distance == .meter {
                constant = DistanceConstant.fromMicrometer.toMeter
            } else if distance == .mile {
                constant = DistanceConstant.fromMicrometer.toMile
            } else if distance == .yard {
                constant = DistanceConstant.fromMicrometer.toYard
            } else if distance == .kilometer {
                constant = DistanceConstant.fromMicrometer.toKilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.fromMicrometer.toMillimeter
            } else if distance == .nanometer {
                constant = DistanceConstant.fromMicrometer.toNanometer
            }
            break
        case .nanometer:
            if distance == .inch {
                constant = DistanceConstant.fromNanometer.toInch
            } else if distance == .centimeter {
                constant = DistanceConstant.fromNanometer.toCentimeter
            } else if distance == .foot {
                constant = DistanceConstant.fromNanometer.toFoot
            } else if distance == .meter {
                constant = DistanceConstant.fromNanometer.toMeter
            } else if distance == .mile {
                constant = DistanceConstant.fromNanometer.toMile
            } else if distance == .yard {
                constant = DistanceConstant.fromNanometer.toYard
            } else if distance == .kilometer {
                constant = DistanceConstant.fromNanometer.toKilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.fromNanometer.toMillimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.fromNanometer.toMicrometer
            }
            break
        }
        
        return value * constant
    }
}


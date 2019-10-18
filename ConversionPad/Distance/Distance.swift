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
                constant = DistanceConstant.inch.centimeter
            } else if distance == .foot {
                constant = DistanceConstant.inch.foot
            } else if distance == .meter {
                constant = DistanceConstant.inch.meter
            } else if distance == .mile {
                constant = DistanceConstant.inch.mile
            } else if distance == .yard {
                constant = DistanceConstant.inch.yard
            } else if distance == .kilometer {
                constant = DistanceConstant.inch.kilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.inch.millimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.inch.micrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.inch.nanometer
            }
            break
            
        case .centimeter:
            if distance == .inch {
                constant = DistanceConstant.centimeter.inch
            } else if distance == .foot {
                constant = DistanceConstant.centimeter.foot
            } else if distance == .meter {
                constant = DistanceConstant.centimeter.meter
            } else if distance == .mile {
                constant = DistanceConstant.centimeter.mile
            } else if distance == .yard {
                constant = DistanceConstant.centimeter.yard
            } else if distance == .kilometer {
                constant = DistanceConstant.centimeter.kilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.centimeter.millimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.centimeter.micrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.centimeter.nanometer
            }
            break
            
        case .foot:
            if distance == .inch {
                constant = DistanceConstant.foot.inch
            } else if distance == .centimeter {
                constant = DistanceConstant.foot.centimeter
            } else if distance == .meter {
                constant = DistanceConstant.foot.meter
            } else if distance == .mile {
                constant = DistanceConstant.foot.mile
            } else if distance == .yard {
                constant = DistanceConstant.foot.yard
            } else if distance == .kilometer {
                constant = DistanceConstant.foot.kilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.foot.millimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.foot.micrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.foot.nanometer
            }
            
            break
        case .meter:
            if distance == .inch {
                constant = DistanceConstant.meter.inch
            } else if distance == .centimeter {
                constant = DistanceConstant.meter.centimeter
            } else if distance == .foot {
                constant = DistanceConstant.meter.foot
            } else if distance == .mile {
                constant = DistanceConstant.meter.mile
            } else if distance == .yard {
                constant = DistanceConstant.meter.yard
            } else if distance == .kilometer {
                constant = DistanceConstant.meter.kilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.meter.millimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.meter.micrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.meter.nanometer
            }
            break
        case .mile:
            
            if distance == .inch {
                constant = DistanceConstant.mile.inch
            } else if distance == .centimeter {
                constant = DistanceConstant.mile.centimeter
            } else if distance == .foot {
                constant = DistanceConstant.mile.foot
            } else if distance == .meter {
                constant = DistanceConstant.mile.meter
            } else if distance == .yard {
                constant = DistanceConstant.mile.yard
            } else if distance == .kilometer {
                constant = DistanceConstant.mile.kilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.mile.millimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.mile.micrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.mile.nanometer
            }
            break
        case .yard:
            if distance == .inch {
                constant = DistanceConstant.yard.inch
            } else if distance == .centimeter {
                constant = DistanceConstant.yard.centimeter
            } else if distance == .foot {
                constant = DistanceConstant.yard.foot
            } else if distance == .meter {
                constant = DistanceConstant.yard.meter
            } else if distance == .mile {
                constant = DistanceConstant.yard.mile
            } else if distance == .kilometer {
                constant = DistanceConstant.yard.kilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.yard.millimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.yard.micrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.yard.nanometer
            }
            break
            
        case .kilometer:
            if distance == .inch {
                constant = DistanceConstant.kilometer.inch
            } else if distance == .centimeter {
                constant = DistanceConstant.kilometer.centimeter
            } else if distance == .foot {
                constant = DistanceConstant.kilometer.foot
            } else if distance == .meter {
                constant = DistanceConstant.kilometer.meter
            } else if distance == .mile {
                constant = DistanceConstant.kilometer.mile
            } else if distance == .yard {
                constant = DistanceConstant.kilometer.yard
            } else if distance == .millimeter {
                constant = DistanceConstant.kilometer.millimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.kilometer.micrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.kilometer.nanometer
            }
            break
            
        case .millimeter:
            if distance == .inch {
                constant = DistanceConstant.millimeter.inch
            } else if distance == .centimeter {
                constant = DistanceConstant.millimeter.centimeter
            } else if distance == .foot {
                constant = DistanceConstant.millimeter.foot
            } else if distance == .meter {
                constant = DistanceConstant.millimeter.meter
            } else if distance == .mile {
                constant = DistanceConstant.millimeter.mile
            } else if distance == .yard {
                constant = DistanceConstant.millimeter.yard
            } else if distance == .kilometer {
                constant = DistanceConstant.millimeter.kilometer
            } else if distance == .micrometer {
                constant = DistanceConstant.millimeter.micrometer
            } else if distance == .nanometer {
                constant = DistanceConstant.millimeter.nanometer
            }
            break
        case .micrometer:
            if distance == .inch {
                constant = DistanceConstant.micrometer.inch
            } else if distance == .centimeter {
                constant = DistanceConstant.micrometer.centimeter
            } else if distance == .foot {
                constant = DistanceConstant.micrometer.foot
            } else if distance == .meter {
                constant = DistanceConstant.micrometer.meter
            } else if distance == .mile {
                constant = DistanceConstant.micrometer.mile
            } else if distance == .yard {
                constant = DistanceConstant.micrometer.yard
            } else if distance == .kilometer {
                constant = DistanceConstant.micrometer.kilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.micrometer.millimeter
            } else if distance == .nanometer {
                constant = DistanceConstant.micrometer.nanometer
            }
            break
        case .nanometer:
            if distance == .inch {
                constant = DistanceConstant.nanometer.inch
            } else if distance == .centimeter {
                constant = DistanceConstant.nanometer.centimeter
            } else if distance == .foot {
                constant = DistanceConstant.nanometer.foot
            } else if distance == .meter {
                constant = DistanceConstant.nanometer.meter
            } else if distance == .mile {
                constant = DistanceConstant.nanometer.mile
            } else if distance == .yard {
                constant = DistanceConstant.nanometer.yard
            } else if distance == .kilometer {
                constant = DistanceConstant.nanometer.kilometer
            } else if distance == .millimeter {
                constant = DistanceConstant.nanometer.millimeter
            } else if distance == .micrometer {
                constant = DistanceConstant.nanometer.micrometer
            }
            break
        }
        
        return value * constant
    }
}


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
                constant = 2.54
            } else if distance == .foot {
                constant = 0.08333333
            } else if distance == .meter {
                constant = 0.0254
            } else if distance == .mile {
                constant = 1.5783e-5
            } else if distance == .yard {
                constant = 0.0277778
            } else if distance == .kilometer {
                constant = 2.540002032e-5
            } else if distance == .millimeter {
                constant = 25.4
            } else if distance == .micrometer {
                constant = 25400
            } else if distance == .nanometer {
                constant = 2.54e+7
            }
            break
            
        case .centimeter:
            
            if distance == .inch {
                constant = 0.0393701
            } else if distance == .foot {
                constant = 0.0328084
            } else if distance == .meter {
                constant = 0.01
            } else if distance == .mile {
                constant = 6.2137e-6
            } else if distance == .yard {
                constant = 0.0109361
            } else if distance == .kilometer {
                constant = 1e-5
            } else if distance == .millimeter {
                constant = 10
            } else if distance == .micrometer {
                constant = 10000
            } else if distance == .nanometer {
                constant = 1e+7
            }
            break
            
        case .foot:
            if distance == .inch {
                constant = 12;
            } else if distance == .centimeter {
                constant = 30.48
            } else if distance == .meter {
                constant = 0.3048
            } else if distance == .mile {
                constant = 0.000189394
            } else if distance == .yard {
                constant = 0.333333
            } else if distance == .kilometer {
                constant = 0.0003048
            } else if distance == .millimeter {
                constant = 304.8
            } else if distance == .micrometer {
                constant = 304800
            } else if distance == .nanometer {
                constant = 3.048e+8
            }
            
            break
        case .meter:
            if distance == .inch {
                constant = 39.3701
            } else if distance == .centimeter {
                constant = 100
            } else if distance == .foot {
                constant = 3.28084
            } else if distance == .mile {
                constant = 0.000621371
            } else if distance == .yard {
                constant = 1.09361
            } else if distance == .kilometer {
                constant = 0.001
            } else if distance == .millimeter {
                constant = 1000
            } else if distance == .micrometer {
                constant = 1e+6
            } else if distance == .nanometer {
                constant = 1e+9
            }
            break
        case .mile:
            
            if distance == .inch {
                constant = 63360
            } else if distance == .centimeter {
                constant = 160934
            } else if distance == .foot {
                constant = 5280
            } else if distance == .meter {
                constant = 1609.34
            } else if distance == .yard {
                constant = 1760
            } else if distance == .kilometer {
                constant = 1.60934
            } else if distance == .millimeter {
                constant = 1.609e+6
            } else if distance == .micrometer {
                constant = 1608999999.98412
            } else if distance == .nanometer {
                constant = 1608999999984.1196289
            }
            break
        case .yard:
            if distance == .inch {
                constant = 36
            } else if distance == .centimeter {
                constant = 91.44
            } else if distance == .foot {
                constant = 3
            } else if distance == .meter {
                constant = 0.9144
            } else if distance == .mile {
                constant = 0.000568182
            } else if distance == .kilometer {
                constant = 0.000914400292608
            } else if distance == .millimeter {
                constant = 914.4
            } else if distance == .micrometer {
                constant = 914400
            } else if distance == .nanometer {
                constant = 9.144e+8
            }
            break
            
        case .kilometer:
            if distance == .inch {
                constant = 39370.1
            } else if distance == .centimeter {
                constant = 100000
            } else if distance == .foot {
                constant = 3280.84
            } else if distance == .meter {
                constant = 1000
            } else if distance == .mile {
                constant = 0.621371
            } else if distance == .yard {
                constant = 1093.61
            } else if distance == .millimeter {
                constant = 1e+6
            } else if distance == .micrometer {
                constant = 1e+9
            } else if distance == .nanometer {
                constant = 1e+12
            }
            break
            
        case .millimeter:
            if distance == .inch {
                constant = 0.0393701
            } else if distance == .centimeter {
                constant = 0.1
            } else if distance == .foot {
                constant = 0.00328084
            } else if distance == .meter {
                constant = 0.001
            } else if distance == .mile {
                constant = 6.2137e-7
            } else if distance == .yard {
                constant = 0.00109361
            } else if distance == .kilometer {
                constant = 1e-6
            } else if distance == .micrometer {
                constant = 1000
            } else if distance == .nanometer {
                constant = 1e+6
            }
            break
        case .micrometer:
            if distance == .inch {
                constant = 3.937e-5
            } else if distance == .centimeter {
                constant = 1e-4
            } else if distance == .foot {
                constant = 3.2808e-6
            } else if distance == .meter {
                constant = 1e-6
            } else if distance == .mile {
                constant = 6.2137e-10
            } else if distance == .yard {
                constant = 1.0936e-6
            } else if distance == .kilometer {
                constant = 1e-9
            } else if distance == .millimeter {
                constant = 0.001
            } else if distance == .nanometer {
                constant = 1000
            }
            break
        case .nanometer:
            if distance == .inch {
                constant = 3.937e-8
            } else if distance == .centimeter {
                constant = 1e-7
            } else if distance == .foot {
                constant = 3.2808e-9
            } else if distance == .meter {
                constant = 1e-9
            } else if distance == .mile {
                constant = 6.2137e-13
            } else if distance == .yard {
                constant = 1.0936e-9
            } else if distance == .kilometer {
                constant = 1e-12
            } else if distance == .millimeter {
                constant = 1e-6
            } else if distance == .micrometer {
                constant = 0.001
            }
            break
        }
        
        return value * constant
    }
}


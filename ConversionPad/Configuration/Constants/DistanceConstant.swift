//
//  DistanceConstant.swift
//  ConversionPad
//
//  Created by Lareen Melo on 10/17/19.
//  Copyright © 2019 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum DistanceConstant {
    enum fromInch {
        static let toInch = 1.0
        static let toCentimeter = 2.54
        static let toFoot = 0.08333333
        static let toMeter = 0.0254
        static let toMile = 1.5783e-5
        static let toYard = 0.0277778
        static let toKilometer = 2.540002032e-5
        static let toMillimeter = 25.4
        static let toMicrometer = 25400.0
        static let toNanometer = 2.54e+7
        
    }
    
    enum fromCentimeter {
        static let toInch = 0.0393701
        static let toCentimeter = 1.0
        static let toFoot = 0.0328084
        static let toMeter = 0.01
        static let toMile = 6.2137e-6
        static let toYard = 0.0109361
        static let toKilometer = 1e-5
        static let toMillimeter = 10.0
        static let toMicrometer = 10000.0
        static let toNanometer = 1e+7
        
    }
    
    enum fromFoot {
        static let toInch = 12.0
        static let toCentimeter = 30.48
        static let toFoot = 1.0
        static let toMeter = 0.3048
        static let toMile = 0.000189394
        static let toYard = 0.333333
        static let toKilometer = 0.0003048
        static let toMillimeter = 304.8
        static let toMicrometer = 304800.0
        static let toNanometer = 3.048e+8
        
    }
    
    enum fromMeter {
        static let toInch = 39.3701
        static let toCentimeter = 100.0
        static let toFoot = 3.28084
        static let toMeter = 1.0
        static let toMile = 0.000621371
        static let toYard = 1.09361
        static let toKilometer = 0.001
        static let toMillimeter = 1000.0
        static let toMicrometer = 1e+6
        static let toNanometer = 1e+9
        
    }
    
    enum fromMile {
        static let toInch = 63360.0
        static let toCentimeter = 160934.0
        static let toFoot = 5280.0
        static let toMeter = 1609.34
        static let toMile = 1.0
        static let toYard = 1760.0
        static let toKilometer = 1.60934
        static let toMillimeter = 1.609e+6
        static let toMicrometer = 1608999999.98412
        static let toNanometer = 1608999999984.1196289
        
    }
    
    enum fromYard {
        static let toInch = 36.0
        static let toCentimeter = 91.44
        static let toFoot = 3.0
        static let toMeter = 0.9144
        static let toMile = 0.000568182
        static let toYard = 1.0
        static let toKilometer = 0.000914400292608
        static let toMillimeter = 914.4
        static let toMicrometer = 914400.0
        static let toNanometer = 9.144e+8
        
    }
    
    enum fromKilometer {
        static let toInch = 39370.1
        static let toCentimeter = 100000.0
        static let toFoot = 3280.84
        static let toMeter = 1000.0
        static let toMile = 0.621371
        static let toYard = 1093.61
        static let toKilometer = 1.0
        static let toMillimeter = 1e+6
        static let toMicrometer = 1e+9
        static let toNanometer = 1e+12
        
    }
    
    enum fromMillimeter {
        static let toInch = 0.0393701
        static let toCentimeter = 0.1
        static let toFoot = 0.00328084
        static let toMeter = 0.001
        static let toMile = 6.2137e-7
        static let toYard = 0.00109361
        static let toKilometer = 1e-6
        static let toMillimeter = 1.0
        static let toMicrometer = 1000.0
        static let toNanometer = 1e+6
        
    }
    
    enum fromMicrometer {
        static let toInch = 3.937e-5
        static let toCentimeter = 1e-4
        static let toFoot = 3.2808e-6
        static let toMeter = 1e-6
        static let toMile = 6.2137e-10
        static let toYard = 1.0936e-6
        static let toKilometer = 1e-9
        static let toMillimeter = 0.001
        static let toMicrometer = 1.0
        static let toNanometer = 1000.0
        
    }
    
    enum fromNanometer {
        static let toInch = 3.937e-8
        static let toCentimeter = 1e-7
        static let toFoot = 3.2808e-9
        static let toMeter = 1e-9
        static let toMile = 6.2137e-13
        static let toYard = 1.0936e-9
        static let toKilometer = 1e-12
        static let toMillimeter = 1e-6
        static let toMicrometer = 0.001
        static let toNanometer = 1.0
        
    }
}

//
//  Temperature.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum Temperature: Int {
    case celsius = 0, fahrenheit, kelvin
    
    func convertTo(temperature to: Temperature, value val: Double) -> Double {
        
        switch self {
        case .celsius:
            if to == .fahrenheit {
                return celsiusToFarenhiet(val)
            } else if to == .kelvin {
                return celsiusToKelvin(val)
            }  else {
                return val
            }

        case .fahrenheit:
            if to == .celsius {
                return farenhietToCelsius(val)
            } else if to == .kelvin {
                return farenhietToKelvin(val)
            }  else {
                return val
            }
            
        case .kelvin:
            if to == .celsius {
                return kelvinToCelsius(val)
            } else if to == .fahrenheit {
                return kelvinToFarenhiet(val)
            }  else {
                return val
            }
        }
    }
    
    static func fromString(_ string: String) -> Temperature? {
        if string == "celsius" {
            return .celsius
        } else if string == "fahrenheit" {
            return .fahrenheit
        } else if string == "kelvin" {
            return .kelvin
        } else {
            return nil
        }
    }
    
    func stringValue() -> String {
        switch self {
        case .celsius:
            return "celsius"
        case .fahrenheit:
            return "fahrenheit"
        case .kelvin:
            return "kelvin"
        }
    }
    
    static func toList() -> [String] {
        var i = 0
        var list = [String]()
        while let temperature = Temperature(rawValue: i) {
            list.append(temperature.stringValue())
            i = i + 1
        }
        return list
    }
    
    func celsiusToFarenhiet(_ celcius: Double) -> Double {
        return (celcius * 9/5) + 32
    }
    
    func celsiusToKelvin(_ celcius: Double) -> Double {
        return celcius + 273.15
    }
    
    func farenhietToCelsius(_ farenhiet: Double) -> Double {
        return (farenhiet - 32) * 5/9
    }
    
    func farenhietToKelvin(_ farenhiet: Double) -> Double {
        return (farenhiet - 32) * 5/9 + 273.15
    }
    
    func kelvinToCelsius(_ kelvin: Double) -> Double {
        return kelvin - 273.15
    }
    
    func kelvinToFarenhiet(_ kelvin: Double) -> Double {
        return (kelvin - 273.15) * 9/5 + 32
    }
}

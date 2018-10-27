//
//  Temperature.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//
//  Rajani Kumar - 10/27/18 - use constants for hardcoded strings. 
//
import Foundation

struct Constants {
    static let constCelsius = "celsius"
    static let constFahrenheit = "fahrenheit"
    static let constKelvin = "kelvin"
}

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
        if string == constCelsius {
            return .celsius
        } else if string == constFahrenheit {
            return .fahrenheit
        } else if string == constKelvin {
            return .kelvin
        } else {
            return nil
        }
    }
    
    func stringValue() -> String {
        switch self {
        case .celsius:
            return constCelsius
        case .fahrenheit:
            return constFahrenheit
        case .kelvin:
            return constKelvin
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

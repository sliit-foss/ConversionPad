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

enum Temperature: String, CaseIterable {
    case celsius, fahrenheit, kelvin
    
    var title: String {
        return self.rawValue
        
    }
            
    func convert(_ value: Double, to temperature: Temperature) -> Double {
        switch self {
        case .celsius:
            if temperature == .fahrenheit {
                return celsiusToFarenhiet(value)
            } else if temperature == .kelvin {
                return celsiusToKelvin(value)
            }  else {
                return value
            }

        case .fahrenheit:
            if temperature == .celsius {
                return farenhietToCelsius(value)
            } else if temperature == .kelvin {
                return farenhietToKelvin(value)
            }  else {
                return value
            }
            
        case .kelvin:
            if temperature == .celsius {
                return kelvinToCelsius(value)
            } else if temperature == .fahrenheit {
                return kelvinToFarenhiet(value)
            }  else {
                return value
            }
        }
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

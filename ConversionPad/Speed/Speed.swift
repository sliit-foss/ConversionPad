//
//  Speed.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum Speed {
    case mps, ftps, kmph, mph, knot
    
    func convertTo(speed to: Speed, value val: Double) -> Double {
        var constant = 1.0
        
        switch self {
            
        case .mps:
            if to == .ftps {
                constant = 3.28084
            } else if to == .kmph {
                constant = 3.6
            } else if to == .mph {
                constant = 2.23694
            } else if to == .knot {
                constant = 1.94384
            } else {
                constant = 1
            }
            break
        case .ftps:
            if to == .mps {
                constant = 0.3048
            } else if to == .kmph {
                constant = 1.09728
            } else if to == .mph {
                constant = 0.681818
            } else if to == .knot {
                constant = 0.592484
            } else {
                constant = 1
            }
            break
        case .kmph:
            if to == .mps {
                constant = 0.277778
            } else if to == .ftps {
                constant = 0.911344
            } else if to == .mph {
                constant = 0.621371
            } else if to == .knot {
                constant = 0.539957
            } else {
                constant = 1
            }
            break
        case .mph:
            if to == .mps {
                constant = 0.44704
            } else if to == .ftps {
                constant = 1.46667
            } else if to == .kmph {
                constant = 1.60934
            } else if to == .knot {
                constant = 0.868976
            } else {
                constant = 1
            }
            break
        case .knot:
            if to == .mps {
                constant = 0.514444
            } else if to == .ftps {
                constant = 1.68781
            } else if to == .kmph {
                constant = 1.852
            } else if to == .mph {
                constant = 1.15078
            } else {
                constant = 1
            }
            break
        }
        return val * constant
    }
    
    static func fromString(_ string: String) -> Speed? {
        if string == Constants.knot {
            return .knot
        } else if string == Constants.mps {
            return .mps
        } else if string == Constants.ftps {
            return .ftps
        } else if string == Constants.mph {
            return .mph
        } else if string == Constants.kmph {
            return .kmph
        } else {
            return nil
        }
    }
    
    func stringValue() -> String {
        switch self {
        case .knot:
            return Constants.knot
        case .mps:
            return Constants.mps
        case .ftps:
            return Constants.ftps
        case .mph:
            return Constants.mph
        case .kmph:
            return Constants.kmph
    
        }
    }
    
    static func toList() -> [String] {
        var i = 0
        var list = [String]()
        while let speed = Speed.iter {
            list.append(speed.stringValue())
            i = i + 1
        }
        return list
    }
}

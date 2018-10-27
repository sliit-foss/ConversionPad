//
//  Constants.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation
enum SpeedConst {
 enum mps {
  static let tomps = 1
  static let toftps = 3.28084
  static let tokmph = 3.6
  static let tomph = 2.23694
  static let toknot = 1.94384
  static let toMach = 0.0030184123
 }
 enum ftps {
  static let tomps = 0.3048
  static let toftps = 1
  static let tokmph = 1.09728
  static let tomph = 0.681818
  static let toknot = 0.592484
  static let toMach = 0.00092001207
 }
 enum kmph {
  static let tomps = 0.277778
  static let toftps = 0.911344
  static let tokmph = 1
  static let tomph = 0.621371
  static let toknot = 0.539957
  static let toMach = 0.00083844787
 }
 enum mph {
  static let tomps = 0.44704
  static let toftps = 1.46667
  static let tokmph = 1.60934
  static let tomph = 1
  static let toknot = 0.868976
  static let toMach = 0.0013493510
 }
 enum knot {
  static let tomps = 0.514444
  static let toftps = 1.68781
  static let tokmph = 1.852
  static let tomph = 1.15078
  static let toknot = 1
  static let toMach = 0.0015528054
 }
 enum mach {
  static let tomps = 343.00
  static let toftps = 1125.33
  static let tokmph = 1234.8021
  static let tomph = 767.2704
  static let toknot = 666.7397
  static let toMach = 1
  }
}

enum WeightConst {
    enum gram {
        static let togram = 1
        static let tokilogram = 0.001
        static let topound = 0.00220462
        static let toounce = 0.035274
        static let toton = 1.0000010787e-6
    }
    enum kilogram {
        static let togram = 1000.0
        static let tokilogram = 1
        static let topound = 2.20462
        static let toounce = 35.274
        static let toton = 0.001
    }
    enum pound {
        static let togram = 453.592
        static let tokilogram = 0.453592
        static let topound = 1.0
        static let toounce = 16.0
        static let toton = 0.000453592
    }
    enum ounce {
        static let togram = 28.3495
        static let tokilogram = 0.0283495
        static let topound = 0.0625
        static let toounce = 1
        static let toton = 2.835e-5
    }
    enum ton {
        static let togram = 1e+6
        static let tokilogram = 1000.0
        static let topound = 2204.62
        static let toounce = 35274.0
        static let toton = 1
    }
}

enum FrequencyConst {
 enum hz {
  static let hz = 1.0
  static let rpm = 60.0
 }
 enum rpm {
  static let hz = 0.01666666666
  static let rpm = 1.0
 }
}

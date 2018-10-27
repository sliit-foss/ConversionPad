//
//  Frequency.swift
//  ConversionPad
//
//  Created by Vishal on 10/27/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import Foundation

enum Frequency: Int {
 case hz = 0, rpm
 
 func convertTo(frequency to: Frequency, value val: Double) -> Double {
  var constant = 1.0
  
  switch self {
   
  case .hz:
   if to == .rpm {
    constant = FrequencyConst.hz.rpm
   }
   else {
    constant = 1
   }
   break
  case .rpm:
   if to == .hz {
    constant = FrequencyConst.rpm.hz
   }
   else {
    constant = 1
   }
   break
  }
  return val * constant
 }
 
 static func fromString(_ string: String) -> Frequency? {
  if string == "rpm" {
   return .rpm
  } else if string == "hz" {
   return .hz
  }else {
   return nil
  }
 }
 
 func stringValue() -> String {
  switch self {
  case .rpm:
   return "rpm"
  case .hz:
   return "hz"
  }
 }
 
 static func toList() -> [String] {
  var i = 0
  var list = [String]()
  while let speed = Frequency(rawValue: i) {
   list.append(speed.stringValue())
   i = i + 1
  }
  return list
 }
}

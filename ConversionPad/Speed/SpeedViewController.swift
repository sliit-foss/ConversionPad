//
//  SpeedViewController.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    @IBOutlet weak var lblSpeedInputUnit: UILabel!
    @IBOutlet weak var lblSpeedInput: DecimalFormattedTextField!
    @IBOutlet weak var lblSpeedOutput: UILabel!
    @IBOutlet weak var speedPicker: UIPickerView!
    
    let speeds = Speed.toList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        speedPicker.dataSource = self
        speedPicker.delegate = self
        convertSpeeds()
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func speedChanged(_ sender: Any) {
        convertSpeeds()
    }
    
    func convertSpeeds() {
        let fromUnitIdx = speedPicker.selectedRow(inComponent: 0)
        let toUnitIdx = speedPicker.selectedRow(inComponent: 1)
        
        let fromUnit = Speed.fromString(speeds[fromUnitIdx])!
        let toUnit = Speed.fromString(speeds[(speeds.count-1) - Int(toUnitIdx)])!
        lblSpeedInputUnit.text = " ".appending(fromUnit.stringValue().capitalized).appending("")
        
        if let inputText = lblSpeedInput.text {
            if !inputText.isEmpty && (Double(inputText) != nil) {
                let inputNum = Double(inputText)
                let outputNum = fromUnit.convertTo(speed: toUnit, value: inputNum!)
                lblSpeedOutput.text = String(outputNum).appending(" ").appending(toUnit.stringValue().capitalized)
            
            } else {
                lblSpeedOutput.text = " ".appending("...")
                
            }
        }
    }
}

extension SpeedViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return speeds.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return speeds[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        convertSpeeds()
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        switch component {
        case 0:
            pickerLabel.text = speeds[row]
            break
        case 1:
            pickerLabel.text = speeds[(speeds.count-1)-row]
        default:
            pickerLabel.text = ""
        }
        
        pickerLabel.textAlignment = NSTextAlignment.center
        return pickerLabel
    }
}

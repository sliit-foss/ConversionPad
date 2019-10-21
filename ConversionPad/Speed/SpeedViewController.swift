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
    
    let speeds = Speed.allCases
    
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
        let fromUnit = speeds[fromUnitIdx]
        let toUnit = speeds[(speeds.endIndex-1) - Int(toUnitIdx)]
        
        lblSpeedInputUnit.text = " ".appending(fromUnit.title.capitalized).appending("")
        
        if let inputText = lblSpeedInput.text {
            if !inputText.isEmpty && (Double(inputText) != nil) {
                let inputNum = Double(inputText) ?? 0.0
                let outputNum = fromUnit.convert(inputNum, to: toUnit)
                lblSpeedOutput.text = String(outputNum).appending(" ").appending(toUnit.title.capitalized)
            
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
        return speeds[row].title
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        convertSpeeds()
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        
        switch component {
        case 0:
            pickerLabel.text = speeds[row].title
        case 1:
            pickerLabel.text = speeds[(speeds.endIndex-1) - row].title
        default:
            pickerLabel.text = ""
        }
        
        pickerLabel.textAlignment = NSTextAlignment.center
        return pickerLabel
    }
}

//
//  DistanceViewController.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {
    
    @IBOutlet weak var lblOutputValue: UILabel!
    @IBOutlet weak var lblInputUnit: UILabel!
    @IBOutlet weak var lblInputValue: UITextField!
    @IBOutlet weak var distancePicker: UIPickerView!
    
    let distances = Distance.toList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        distancePicker.dataSource = self
        distancePicker.delegate = self
        convertDistances()
        self.hideKeyboardWhenTappedAround()
    }
    
    
    @IBAction func didChangeTextValue(_ sender: Any) {
        convertDistances()
    }
    
    func convertDistances() {
        let fromUnitIdx = distancePicker.selectedRow(inComponent: 0)
        let toUnitIdx = distancePicker.selectedRow(inComponent: 1)
        
        let fromUnit = Distance.fromString(distances[fromUnitIdx])!
        let toUnit = Distance.fromString(distances[(distances.count-1) - Int(toUnitIdx)])!
        lblInputUnit.text = " ".appending(fromUnit.stringValue().capitalized).appending("")
        
        if let inputText = lblInputValue.text {
            if !inputText.isEmpty && (Double(inputText) != nil) {
                let inputNum = Double(inputText)
                let outputNum = fromUnit.convertTo(distance: toUnit, value: inputNum!)
                lblOutputValue.text = String(outputNum).appending(" ").appending(toUnit.stringValue().capitalized)
                
            } else {
                lblOutputValue.text = " ".appending("...")
                
            }
        }
    }
}

extension DistanceViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return distances.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return distances[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        convertDistances()
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        switch component {
        case 0:
            pickerLabel.text = distances[row]
            break
        case 1:
            pickerLabel.text = distances[(distances.count-1)-row]
        default:
            pickerLabel.text = ""
        }
        
        pickerLabel.textAlignment = NSTextAlignment.center
        return pickerLabel
    }
}

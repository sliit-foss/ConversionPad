//
//  WeightViewController.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    @IBOutlet weak var lblWeightInputUnit: UILabel!
    @IBOutlet weak var lblWeightInput: DecimalFormattedTextField!
    @IBOutlet weak var lblWeightOutput: UILabel!
    @IBOutlet weak var weighPicker: UIPickerView!
    
    let weights = Weight.allCases
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weighPicker.dataSource = self
        weighPicker.delegate = self
        convertWeights()
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func weightChanged(_ sender: Any) {
        convertWeights()
    }
    
    func convertWeights() {
        let fromUnitIdx = weighPicker.selectedRow(inComponent: 0)
        let toUnitIdx = weighPicker.selectedRow(inComponent: 1)
        let fromUnit = weights[fromUnitIdx]
        let toUnit = weights[(weights.endIndex-1) - Int(toUnitIdx)]
        
        lblWeightInputUnit.text = " ".appending(fromUnit.title.capitalized).appending("")
        
        if let inputText = lblWeightInput.text {
            if !inputText.isEmpty && (Double(inputText) != nil) {
                let inputNum = Double(inputText) ?? 0.0
                let outputNum = fromUnit.convert(inputNum, to: toUnit)
                lblWeightOutput.text = String(outputNum).appending(" ").appending(toUnit.title.capitalized)
                
            } else {
                lblWeightOutput.text = " ".appending("...")
                
            }
        }
    }
}

extension WeightViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return weights.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return weights[row].title
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        convertWeights()
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        
        switch component {
        case 0:
            pickerLabel.text = weights[row].title
        case 1:
            pickerLabel.text = weights[(weights.endIndex - 1) - row].title
        default:
            pickerLabel.text = ""
        }
        
        pickerLabel.textAlignment = NSTextAlignment.center
        return pickerLabel
    }
    
}

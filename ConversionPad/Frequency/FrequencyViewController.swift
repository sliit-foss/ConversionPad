//
//  FrequencyViewController.swift
//  ConversionPad
//
//  Created by Vishal on 10/27/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import UIKit

class FrequencyViewController: UIViewController {
    
    @IBOutlet weak var lblFrequencyInputUnit: UILabel!
    @IBOutlet weak var lblFrequenctInput: UITextField!
    @IBOutlet weak var lblFrequencyOutput: UILabel!
    @IBOutlet weak var frequencyPicker: UIPickerView!
    
    let frequencies = Frequency.allCases
    var reversedFrequencies = [Frequency]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frequencyPicker.dataSource = self
        frequencyPicker.delegate = self
        convertFrequencies()
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func frequencyChanged(_ sender: Any) {
        convertFrequencies()
    }
    
    func convertFrequencies() {
        let fromUnitIdx = frequencyPicker.selectedRow(inComponent: 0)
        let toUnitIdx = frequencyPicker.selectedRow(inComponent: 1)
        let fromUnit = frequencies[fromUnitIdx]
        let toUnit = reversedFrequencies[toUnitIdx]

        lblFrequencyInputUnit.text = " ".appending((fromUnit.title as AnyObject).capitalized).appending("")
        
        if let inputText = lblFrequenctInput.text {
            if !inputText.isEmpty && (Double(inputText) != nil) {
                let inputNum = Double(inputText) ?? 0.0
                let outputNum = fromUnit.convert(inputNum, to: toUnit)
                lblFrequencyOutput.text = String(outputNum).appending(" ").appending(toUnit.title.capitalized)
                
            } else {
                lblFrequencyOutput.text = " ".appending("...")
                
            }
        }
    }
}

extension FrequencyViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return frequencies.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return frequencies[row].title
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        convertFrequencies()
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        reversedFrequencies = frequencies.reversed()
        let pickerLabel = UILabel()
        
        switch component {
        case 0:
            pickerLabel.text = frequencies[row].title
        case 1:
            pickerLabel.text = reversedFrequencies[row].title
        default:
            pickerLabel.text = ""
        }
        
        pickerLabel.textAlignment = NSTextAlignment.center
        return pickerLabel
    }
}


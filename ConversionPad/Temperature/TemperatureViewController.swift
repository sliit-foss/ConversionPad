//
//  TemperatureViewController.swift
//  ConversionPad
//
//  Created by Dinushanka Nayomal on 8/19/18.
//  Copyright © 2018 Dinushanka Nayomal. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {

    @IBOutlet weak var lblTemperatureInputUnit: UILabel!
    @IBOutlet weak var lblTemperatureInput: DecimalFormattedTextField!
    @IBOutlet weak var lblTemperatureOutput: UILabel!
    @IBOutlet weak var temperaturePicker: UIPickerView!
    
    // CaseIterable advantage
    let temperatures = Temperature.allCases
    
    override func viewDidLoad() {
        super.viewDidLoad()
        temperaturePicker.dataSource = self
        temperaturePicker.delegate = self
        setupKeyboardToolbar()
        convertTemperatures()
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func temperatureChanged(_ sender: Any) {
        convertTemperatures()
    }
    
    func setupKeyboardToolbar() {
         let toolbar = UIToolbar(frame: CGRect(x: 0,
                                        y: 0,
                                        width: self.view.bounds.size.width,
                                        height: 50))
         let plusMinusButton = UIBarButtonItem(title: "+/-",
                                        style: .plain,
                                        target: self,
                                        action: #selector(handlePlusMinus))
         toolbar.items = [plusMinusButton]
         lblTemperatureInput.inputAccessoryView = toolbar;
    }
    
     @objc func handlePlusMinus() {
          guard let value = lblTemperatureInput.text else {return}
          guard let number = Double(value) else {return}
          lblTemperatureInput.text = String(-number)
           convertTemperatures()
    }
    
    func convertTemperatures() {
        let fromUnitIdx = temperaturePicker.selectedRow(inComponent: 0)
        let toUnitIdx = temperaturePicker.selectedRow(inComponent: 1)
        let fromUnit = temperatures[fromUnitIdx]
        let toUnit = temperatures[(temperatures.endIndex-1) - Int(toUnitIdx)]
        /* working with .endIndex instead .count since the enum distances handles conforms to both CaseIterable and Strings, and there's not stable behavior when working with those two.*/

        
        lblTemperatureInputUnit.text = " ".appending(fromUnit.title.capitalized).appending("")
        
        if let inputText = lblTemperatureInput.text {
            if !inputText.isEmpty && (Double(inputText) != nil) {
                let inputNum = Double(inputText) ?? 0.0
                let outputNum = fromUnit.convert(inputNum, to: toUnit)
                lblTemperatureOutput.text = String(outputNum).appending(" ").appending(toUnit.title.capitalized)
                
            } else {
                lblTemperatureOutput.text = " ".appending("...")
                
            }
        }
    }
}

extension TemperatureViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temperatures.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return temperatures[row].title
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        convertTemperatures()
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        switch component {
        case 0:
            pickerLabel.text = temperatures[row].title
        case 1:
            pickerLabel.text = temperatures[(temperatures.endIndex-1) - row].title
        default:
            pickerLabel.text = ""
        }
        
        pickerLabel.textAlignment = NSTextAlignment.center
        return pickerLabel
    }
    
}

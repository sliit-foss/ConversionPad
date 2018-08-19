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
    @IBOutlet weak var lblTemperatureInput: UITextField!
    @IBOutlet weak var lblTemperatureOutput: UILabel!
    @IBOutlet weak var temperaturePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
}

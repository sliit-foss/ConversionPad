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
    @IBOutlet weak var lblWeightInput: UITextField!
    @IBOutlet weak var lblWeightOutput: UILabel!
    @IBOutlet weak var weighPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
}

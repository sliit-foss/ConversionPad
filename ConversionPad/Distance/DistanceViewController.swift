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
        self.hideKeyboardWhenTappedAround()
    }
}

extension DistanceViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return distances.count
    }
    
    
}

import UIKit

class DecimalFormattedTextField: UITextField {    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        delegate = self
    }
}

extension DecimalFormattedTextField: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let existingInput = textField.text else { return true }
        
        return !(string.contains(".") && existingInput.contains("."))
    }
}

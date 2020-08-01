//
//  CurrencyTextField.swift
//  Window-shopper
//
//  Created by Rafa Zaidan on 01/08/2020.
//  Copyright © 2020 Rafa Zaidan. All rights reserved.
//

import UIKit

@IBDesignable class CurrencyTextField: UITextField {
    
    override class func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        
        // Setting the background color and the corner of the textField
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        
        
        // Setting up the design for the text that the user inputs
        textAlignment = .center
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        
        // Customizing the placeholder
        if let customPlaceholder = placeholder {
            
            let place = NSAttributedString(string: customPlaceholder, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        // Setting the keyboard type for the textfield
        keyboardType = .decimalPad
        
    }
}

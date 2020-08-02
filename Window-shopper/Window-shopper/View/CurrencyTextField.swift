//
//  CurrencyTextField.swift
//  Window-shopper
//
//  Created by Rafa Zaidan on 01/08/2020.
//  Copyright © 2020 Rafa Zaidan. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    // Creating the currency symbol on the left side of the textfield
    override func draw(_ rect: CGRect) {
        
        // Creating the label
        let size: CGFloat = 20
        
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height) / 2 - (size / 2), width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.8920854404, green: 0.8920854404, blue: 0.8920854404, alpha: 0.8)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        // Creating the currency symbol
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        // Setting the text of the label to the currency symbol
        currencyLabel.text = formatter.currencySymbol
        
        // Adding the currency label to the textfield
        addSubview(currencyLabel)
    }
    
    
    func customizeView() {
        
        clipsToBounds = true
        
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

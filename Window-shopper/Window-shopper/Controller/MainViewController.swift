//
//  ViewController.swift
//  Window-shopper
//
//  Created by Rafa Zaidan on 01/08/2020.
//  Copyright © 2020 Rafa Zaidan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var hourlyWageTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
        hourlyWageTextField.inputAccessoryView = createCalculateButton()
        priceTextField.inputAccessoryView = createCalculateButton()
    }

    func createCalculateButton() -> UIButton {
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButton.backgroundColor = #colorLiteral(red: 1, green: 0.7339678406, blue: 0.1402323484, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.addTarget(self, action: #selector(performCalculation), for: .touchUpInside)
        
        return calculateButton
    }
    
    
    @objc func performCalculation() {
        
        // Check if the user has typed something in both textfields
        if let hourlyWageTextField = hourlyWageTextField.text, let priceTextField = priceTextField.text {
            
            // Check if the users input is a number
            if let wage = Double(hourlyWageTextField), let price = Double(priceTextField) {
                
                // Set the result label to the result of the calculation
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                
                // Show both labels
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                
                // Hide the keyboard
                view.endEditing(true)
            }
            
        }
        
    }
    
    
    @IBAction func clearCalculationTapped() {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
        hourlyWageTextField.text = ""
        priceTextField.text = ""
    }

}


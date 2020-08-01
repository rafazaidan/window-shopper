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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButton.backgroundColor = #colorLiteral(red: 1, green: 0.7339678406, blue: 0.1402323484, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.addTarget(self, action: #selector(performCalculation), for: .touchUpInside)
        
        hourlyWageTextField.inputAccessoryView = calculateButton
        priceTextField.inputAccessoryView = calculateButton
    }

    @objc func performCalculation() {
        // TODO: - Build the logic
    }

}


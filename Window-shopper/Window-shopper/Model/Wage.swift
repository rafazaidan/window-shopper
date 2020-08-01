//
//  Wage.swift
//  Window-shopper
//
//  Created by Rafa Zaidan on 01/08/2020.
//  Copyright © 2020 Rafa Zaidan. All rights reserved.
//

import Foundation

struct Wage {
    
    static func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        
        // Divide price by wage, round up the result and return it as an Int
        return Int(ceil(price / wage))
    }
    
    
}

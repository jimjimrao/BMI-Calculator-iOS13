//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Jimmy Rao on 11/20/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue: String = "0.0"
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmi = weight / (pow(height, 2))
        self.bmiValue = String(format: "%.1f", bmi)
    }
    
    func getBMIValue() -> String {
        return self.bmiValue
    }
}

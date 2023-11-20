//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Jimmy Rao on 11/20/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (pow(height, 2))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more food", color: .systemBlue)
        } else if bmiValue >= 18.5 && bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are fit", color: .systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "Stop eating fatty", color: .systemRed)
        }
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .systemGray
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "Error Calculation"
    }
}

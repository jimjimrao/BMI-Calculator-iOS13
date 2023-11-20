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
        bmi = BMI(value: bmiValue, advice: "", color: .systemBlue)
        if let bmi = bmi {
            if bmi.value < 18.5 {
                print("Underweight")
            } else if bmi.value >= 18.5 && bmi.value <= 24.9 {
                print("Normal")
            } else {
                print("Overweight")
            }
        }
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
}

//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Flare on 14/01/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float ,_ weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.cyan)
        } else if bmiValue < 25 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
        }
    }
    func getBmiValue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    func getBmiAdvice() -> String {
        return bmi?.advice ?? "I AM ERROR"
    }
    func getBmiColor() -> UIColor {
        return bmi?.color ?? UIColor.orange
    }
}

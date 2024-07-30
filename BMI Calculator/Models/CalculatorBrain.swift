//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Anas Salah on 30/07/2024.
//

import Foundation

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight: Eat more meals!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal weight: Keep it up!", color: .green)
        } else if bmiValue < 29.9 {
            bmi = BMI(value: bmiValue, advice: "Overweight: Eat healthier food!", color: .orange)
        } else {
            bmi = BMI(value: bmiValue, advice: "Obesity: Consult a doctor!", color: .red)
        }
    }
    
    func getBMIValue() -> String {
        String(format: "%.1f", bmi?.value ?? 0.0)
    }
}

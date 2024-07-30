//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Anas Salah on 20/07/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightOT: UILabel!
    @IBOutlet weak var weightOT: UILabel!
    @IBOutlet weak var heightProgressBar: UISlider!
    @IBOutlet weak var weightProgressBar: UISlider!
    
    var calcBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderChange(_ sender: UISlider) {
        if sender.tag == 0 { // this is the Height
            let formattedHeight = String(format: "%.2f", sender.value)
            heightOT.text = "\(formattedHeight)m"
        } else { // this is the Weight
            let formattedWeight = String(format: "%.0f", sender.value)
            weightOT.text = "\(formattedWeight)kg"
        }
    }
    
    @IBAction func calculateBtn(_ sender: UIButton) {
        let height = heightProgressBar.value
        let weight = weightProgressBar.value
        
        calcBrain.calculateBMI(height: height, weight: weight)
        
        
        let id = "goToResult"
        self.performSegue(withIdentifier: id, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destnationVC = segue.destination as! ResultVC
            destnationVC.bmiValue = calcBrain.getBMIValue()
            destnationVC.advice = calcBrain.bmi?.advice
            destnationVC.color = calcBrain.bmi?.color
        }
    }
}

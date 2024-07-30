//
//  ResultVC.swift
//  BMI Calculator
//
//  Created by Anas Salah on 30/07/2024.
//

import UIKit

class ResultVC: UIViewController {
    
    let id2 = "move"
    var bmiValue = "0.0"
    var color: UIColor?
    var advice: String?
    
    
    @IBOutlet weak var resultOT: UILabel!
    @IBOutlet weak var hintOT: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultOT.text = bmiValue
        
//        if let bmi = Double(bmiValue) {
//            hintOT.text = getAdvice(for: bmi)
//        } else {
//            hintOT.text = "Invalid BMI value."
//        }
        hintOT.text = advice
        //hintOT.textColor = color
        view.backgroundColor = color
    }
    

    @IBAction func backBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: id2, sender: self)
    }
    
//    func getAdvice(for bmi: Double) -> String {
//        if bmi < 18.5 {
//            return "Underweight: Eat more meals"
//        } else if bmi < 24.9 {
//            return "Normal weight: Keep it up"
//        } else if bmi < 29.9 {
//            return "Overweight: Eat healthier food"
//        } else {
//            return "Obesity: Consult a doctor"
//        }
//    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

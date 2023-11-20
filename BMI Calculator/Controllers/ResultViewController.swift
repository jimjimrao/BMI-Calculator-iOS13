//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Jimmy Rao on 11/19/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bgColor: UIImageView!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        bgColor.backgroundColor = color
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}

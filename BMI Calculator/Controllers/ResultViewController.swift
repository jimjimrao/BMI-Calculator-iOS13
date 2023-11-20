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
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bmiLabel.text = bmiValue
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
    }
}

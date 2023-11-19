//
//  secondViewController.swift
//  BMI Calculator
//
//  Created by Jimmy Rao on 11/19/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        view.addSubview(label)
    }
}

//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var massTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var BMILabel: UILabel!

    
    @IBAction func BMIButtonPressed(sender: AnyObject) {
        if let mass = massTextField.text {
            if let height = heightTextField.text{
                let ma = Double(mass)
                let hei = Double(height)
                let BMI = ma! / (hei!*hei!)
                BMILabel.text = "Your BMI: \(BMI)"
            }else{
                BMILabel.text = "Your BMI: failure:your too fat;)"
            }

        }else{
            BMILabel.text = "Your BMI: failure:your too fat;)"
        }
    }
}


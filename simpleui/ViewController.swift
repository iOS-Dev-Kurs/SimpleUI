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
        if let mass = massTextField.text ,height = heightTextField.text, ma = Double(mass), hei = Double(height){
                let BMI = round((ma / (hei*hei))*10)/10
                BMILabel.text = "Your BMI: \(BMI)"
        }else{
            BMILabel.text = "Your BMI: failure"
        }
    }
}


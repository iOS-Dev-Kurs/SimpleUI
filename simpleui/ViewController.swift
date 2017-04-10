//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var nameGewicht: UITextField!
    @IBOutlet weak var nameGröße: UITextField!
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBAction func nameButton(_ sender: Any) {
        guard let gewicht = nameGewicht.text
            else {
                return
        }
        guard let größe = nameGröße.text
            else {
                return
        }
        
        guard let m = Double(gewicht)
            else {
        return
        }
        guard let l = Double(größe)
            else {
        return
        }
        
        
        let bmi = m/pow(l,2)
        
    
        bmiLabel.text = String(format: "Der BMI beträgt %.2f", bmi)
       

    
        
    }
}


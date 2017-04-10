//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gewichtTextfield: UITextField!
    @IBOutlet weak var größeTextfield: UITextField!
    
    @IBOutlet weak var setBMI: UILabel!
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        
        guard let gewichttext=gewichtTextfield.text else {
            return
        }
        
        guard let größetext=größeTextfield.text else {
            return
        }
        
        guard let gewicht = Double(gewichttext)
            else {
                return}
        
        guard let größe = Double(größetext)
            else {
                return}
        
        let bmi = gewicht/pow(größe,2)
        
        
      
        setBMI.text = "BMI \(bmi)"
   
    
    }
    
   
    
    
    
    
}


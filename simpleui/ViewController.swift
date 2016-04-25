//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var gewicht: UITextField!
    @IBOutlet var groesse: UITextField!
    @IBOutlet var bmi: UILabel!
    @IBAction func button(sender: UIButton) {
        if let weight = gewicht.text  {
            if let length = groesse.text {
                if let weight2 = Double(weight){
                    if let length2 = Double(length){
                        
                        bmi.text = String(round(100*(weight2/(length2*length2)))/100)
                    }
                    else{bmi.text = "inkorrekte Eingabe"}
                }
                else{bmi.text = "inkorrekte Eingabe"}
            }
            else{bmi.text = "inkorrekte Eingabe"}
        }
        else{bmi.text = "inkorrekte Eingabe"}
                
                
                
        
                
        
        
    }
    
    
}


//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var output: UITextView!
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var alter: UITextField!
    @IBOutlet weak var groesse: UITextField!
    @IBOutlet weak var kg: UITextField!
    
    @IBAction func calc(sender: AnyObject) {
        
        if let name = name.text where !name.isEmpty{
            if let groesse = groesse.text where !groesse.isEmpty{
                
                if let gewicht = kg.text where !gewicht.isEmpty{
                    
                    let c_groesse = Double(groesse)!/100
                    
                    let p_groesse = pow(Double(c_groesse), 2.0)
                    
                    let bmi = Double(gewicht)!/p_groesse
                    
                    let ausgabe = Double(round(1000*bmi)/1000)
                    
                    if ausgabe < 18.500{
                        
                        output.text = "Hallo \(name)\n Dein Aktueller BMI beträgt: \(ausgabe) (Untergewicht)"
                    }
                    else if ausgabe > 18.500 && ausgabe < 20.500 {
                        
                        output.text = "Hallo \(name)\n Dein Aktueller BMI beträgt: \(ausgabe) (Normalgewicht)"

                    }
                    else if ausgabe == 25.000 && ausgabe < 30.000{
                        
                        output.text = "Hallo \(name)\n Dein Aktueller BMI beträgt: \(ausgabe) (Übergewicht)"

                    }
                    else if ausgabe > 30.000{
                        output.text = "Hallo \(name)\n Dein Aktueller BMI beträgt: \(ausgabe) (Adipositas)"
                    }
                    
                    output.text = "Hallo \(name)\n Dein Aktueller BMI beträgt: \(ausgabe)"

                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}

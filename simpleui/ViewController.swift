//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gewichtLabel: UILabel!
    @IBOutlet weak var größeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slyderGröße(slyderGröße)
        slyderGewicht(slyderGewicht)
        
        bmiLabel.text = "Hier wird dein BMI stehen"
    }
    
    
    @IBAction func slyderGewicht(_ sender: Any) {
        
        gewichtLabel.text = "\(slyderGewicht.value)"
        
    }
    
    @IBOutlet weak var slyderGewicht: UISlider!
    @IBAction func slyderGröße(_ sender: Any) {
        
        größeLabel.text = "\(slyderGröße.value)"
    }
    
    
    
    @IBOutlet weak var slyderGröße: UISlider!
    
    
    
    
    @IBAction func berechneBMI(_ sender: Any) {
        
        let größe = slyderGröße.value
        let gewicht = slyderGewicht.value
        
        let bmi = gewicht / pow(größe,2)
        
        bmiLabel.text = "\(bmi)"
        
    }
    @IBOutlet weak var bmiLabel: UILabel!
}


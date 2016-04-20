//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count: Int = 0
    
    func update_labe_counter () {
        counter_label.text = String(count)
    }
    
    @IBOutlet var counter_label: UILabel!
    
    
    @IBAction func plus_one(sender: AnyObject) {
        count += 1
        update_labe_counter ()
    }

    
    @IBAction func reset_label(sender: AnyObject) {
        count = 0
        update_labe_counter ()
 
    }
    
    @IBAction func minus_one(sender: AnyObject) {
        count -= 1
        update_labe_counter ()

    }
    
    var bmi: Float = 0
    
    
    @IBOutlet weak var gewicht_label: UILabel!
    @IBOutlet weak var gewicht_slider: UISlider!
    @IBAction func gewicht_slider(sender: AnyObject) {
        gewicht_label.text = "Dein Gewicht: \(gewicht_slider.value)"
        bmi = gewicht_slider.value/(laenge_slider.value*laenge_slider.value)
        bmi_label.text = "Dein BMI: \(bmi)kg"
    }
    
    
    @IBOutlet weak var laenge_label: UILabel!
    @IBOutlet weak var laenge_slider: UISlider!
    @IBAction func laenge_slider_change(sender: AnyObject) {
        laenge_label.text = "Deine Größe: \(laenge_slider.value)"
        bmi = gewicht_slider.value/(laenge_slider.value*laenge_slider.value)
        bmi_label.text = "Dein BMI: \(bmi)cm"
    }
    
    
    @IBOutlet weak var bmi_label: UILabel!
}

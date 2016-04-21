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
        bmi = gewicht_slider.value/(laenge_slider.value*laenge_slider.value)*10000
        bmi_label.text = "Dein BMI: \(bmi)kg"
    }
    
    
    @IBOutlet weak var laenge_label: UILabel!
    @IBOutlet weak var laenge_slider: UISlider!
    @IBAction func laenge_slider_change(sender: AnyObject) {
        laenge_label.text = "Deine Größe: \(laenge_slider.value)"
        bmi = gewicht_slider.value/(laenge_slider.value*laenge_slider.value)*10000
        bmi_label.text = "Dein BMI: \(bmi)cm"
    }
    
    
    @IBOutlet weak var bmi_label: UILabel!
    
    @IBOutlet weak var slider_red: UISlider!
    @IBOutlet weak var slider_green: UISlider!
    @IBOutlet weak var slider_blue: UISlider!

    func chance_color () {
        let r = CGFloat(slider_red.value/255)
        let g = CGFloat(slider_green.value/255)
        let b = CGFloat(slider_blue.value/255)
        let color = UIColor(red: r, green: g, blue: b, alpha: 1)
        self.view.backgroundColor = color
    }
    @IBAction func change_red(sender: AnyObject) {
        chance_color ()
        
    }
    
    
    @IBAction func change_green(sender: AnyObject) {
        chance_color ()
    }
    
    
    @IBAction func change_blue(sender: AnyObject) {
        chance_color ()
    }
    
    @IBAction func change_color_random(sender: AnyObject) {
        
        var r = CGFloat(arc4random_uniform(1))
        var g = CGFloat(arc4random_uniform(1))
        var b = CGFloat(arc4random_uniform(1))
        let color = UIColor(red: r, green: g, blue: b, alpha: 1)
        self.view.backgroundColor = color

    }
    
}

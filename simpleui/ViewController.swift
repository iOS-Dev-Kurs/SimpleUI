//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //counter
    var count: Int = 0
    @IBOutlet var counter_label: UILabel!
    
    func update_labe_counter () {
        counter_label.text = String(count)
    }
    
    @IBAction func plus_one(sender: AnyObject) {
        count += 1
        update_labe_counter ()
    }
    
    @IBAction func minus_one(sender: AnyObject) {
        count -= 1
        update_labe_counter ()

    }
    
     @IBAction func reset_label(sender: AnyObject) {
        count = 0
        update_labe_counter ()
    }
   
    
    //BMI
    var bmi: Float = 0
    
    @IBOutlet weak var gewicht_label: UILabel!
    @IBOutlet weak var gewicht_slider: UISlider!
    
    @IBOutlet weak var laenge_label: UILabel!
    @IBOutlet weak var laenge_slider: UISlider!
    
    @IBOutlet weak var bmi_label: UILabel!
    
    @IBAction func gewicht_slider(sender: AnyObject) {
        //update gewicht label
        gewicht_label.text = String(format: "Dein Gewicht: %.1f kg", gewicht_slider.value)
        //update bmi
        bmi = gewicht_slider.value/(laenge_slider.value*laenge_slider.value)*10000
        bmi_label.text = String(format: "Dein BMI: %.2f", bmi)
    }
    
    @IBAction func laenge_slider_change(sender: AnyObject) {
        //update größe label
        laenge_label.text = String(format: "Deine Größe: %.1f cm", laenge_slider.value)
        //update bmi
        bmi = gewicht_slider.value/(laenge_slider.value*laenge_slider.value)*10000
        bmi_label.text = String(format: "Dein BMI: %.2f", bmi)
    }
    
    
    //Change Background color
    var color: UIColor?
    
    @IBOutlet weak var slider_red: UISlider!
    @IBOutlet weak var slider_green: UISlider!
    @IBOutlet weak var slider_blue: UISlider!
    
    @IBOutlet weak var red_value: UILabel!
    @IBOutlet weak var green_value: UILabel!
    @IBOutlet weak var blue_value: UILabel!
    
    //change manualy
    func chance_color () {
        let r = CGFloat(slider_red.value/255)
        let g = CGFloat(slider_green.value/255)
        let b = CGFloat(slider_blue.value/255)
        color = UIColor(red: r, green: g, blue: b, alpha: 1)
        self.view.backgroundColor = color
    }
    
    @IBAction func change_red(sender: UISlider) {
        chance_color ()
        red_value.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func change_green(sender: UISlider) {
        chance_color ()
        green_value.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func change_blue(sender: UISlider) {
        chance_color ()
        blue_value.text = "\(Int(sender.value))"
    }
    
    //change automaticly
    func change_color_random () {
        let r =  CGFloat(arc4random_uniform(255))/255
        let g =  CGFloat(arc4random_uniform(255))/255
        let b =  CGFloat(arc4random_uniform(255))/255
        color = UIColor(red: r, green: g, blue: b, alpha: 1)
        self.view.backgroundColor = color
        
        slider_red.value = Float(r*255)
        slider_green.value = Float(g*255)
        slider_blue.value = Float(b*255)
        
        red_value.text = "\(Int(r*255))"
        green_value.text = "\(Int(g*255))"
        blue_value.text = "\(Int(b*255))"
    }
    
    @IBAction func change_color_random(sender: AnyObject) {
        change_color_random ()
    }
    var interval: Float = 0
    var randomTimer: NSTimer?
    @IBAction func switch_auto_color(sender: UISwitch) {
        if sender.on {
            interval = round(change_speed_slider.value*100)/100
            print(interval)
            randomTimer = NSTimer.scheduledTimerWithTimeInterval(Double(interval), target: self, selector: "change_color_random", userInfo: nil, repeats:true)
        } else {
            randomTimer?.invalidate()
            randomTimer = nil
        }
    }
    
    @IBOutlet weak var speed_label: UILabel!
    @IBOutlet weak var change_speed_slider: UISlider!
    
    @IBAction func change_speed(sender: UISlider) {
        interval = round(change_speed_slider.value*100)/100
        randomTimer?.invalidate()
        randomTimer = NSTimer.scheduledTimerWithTimeInterval(Double(interval), target: self, selector: "change_color_random", userInfo: nil, repeats:true)
        speed_label.text = String(format: "%.2f s", sender.value)
    }
}

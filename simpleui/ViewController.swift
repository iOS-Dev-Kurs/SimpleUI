//
//  ViewController.swift
//  SimpleUI
//
//  Created by Lucas-Raphael Müller on 24.04.2016
//  Copyright (c) 2016 Lucas-Raphael Müller. All rights reserved.
//

import UIKit

var buttonState: Float?

class ViewController: UIViewController {

    @IBOutlet weak var sliderBool: UISlider!
    
    @IBOutlet weak var debugVal: UILabel!
    
    @IBOutlet weak var boolSwitch: UISwitch!
    
    @IBOutlet weak var debugButton: UIButton!
    
    @IBAction func sliderBoolValueChange(sender: UISlider) {
        buttonState = Float(sender.value)
        if buttonState < 0.5  {
            boolSwitch.setOn(false, animated: true)
        } else if buttonState >= 0.5 {
            boolSwitch.setOn(true, animated: true)
        }
    }
    
    @IBAction func printDebugValue(sender: UIButton) {
        let debugOutput = String(buttonState)
        debugVal.text = debugOutput
    }
    
}
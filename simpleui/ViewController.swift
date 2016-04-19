//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var redSlider: CGFloat = 0.0
    var blueSlider: CGFloat = 0.0
    var greenSlider: CGFloat = 0.0

    @IBOutlet weak var sliderRot: UISlider!
    @IBOutlet weak var sliderBlau: UISlider!
    @IBOutlet weak var sliderGrün: UISlider!
    @IBOutlet weak var buttonBackChosen: UIButton!
    @IBOutlet weak var buttonBackRandom: UIButton!
    @IBAction func sliderRedChanged(sender: UISlider) {
        redSlider = CGFloat(sender.value)
    }
    @IBAction func sliderblueChanged(sender: UISlider) {
        blueSlider = CGFloat(sender.value)
    }
    @IBAction func sliderGreenChanged(sender: UISlider) {
        greenSlider = CGFloat(sender.value)
    }

    @IBAction func changeBackChosen(sender: AnyObject) {
        self.view.backgroundColor = UIColor.init(red: CGFloat(sliderRot.value), green: CGFloat(sliderGrün.value), blue: CGFloat(sliderBlau.value), alpha: 1)
        buttonBackChosen.setTitleColor(UIColor.init(red: CGFloat(1.0-redSlider), green: CGFloat(1.0-greenSlider), blue: CGFloat(1.0-blueSlider), alpha: 1), forState:.Normal )
    }
    @IBAction func changeBackRandom(sender: AnyObject) {
        let redColor = CGFloat(drand48())
        let blueColor = CGFloat(drand48())
        let greenColor = CGFloat(drand48())
        self.view.backgroundColor = UIColor.init(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
        buttonBackRandom.setTitleColor(UIColor.init(red: CGFloat(1.0-redColor), green: CGFloat(1.0-greenColor), blue: CGFloat(1.0-blueColor), alpha: 1), forState:.Normal )
    }
    
}



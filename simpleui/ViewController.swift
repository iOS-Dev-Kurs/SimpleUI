//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var t_stat:Int = 4
    var kochzeit:Int = 6
    var höhe:Int = 300
    var gewicht:Int = 50
    var kons:Int = 65
    
    
    
    @IBOutlet var höhetext: UILabel!
    
    @IBOutlet var höheslider: UISlider!

    @IBAction func höhechange(sender: AnyObject) {
        höhe = Int(höheslider.value)
        höhetext.text = "\(höhe)"
    }
    
    
    @IBOutlet var gewichttext: UILabel!
    
    @IBOutlet var gewichtslider: UISlider!
    
    @IBAction func gewichtchange(sender: AnyObject) {
        gewicht = Int(gewichtslider.value)
        gewichttext.text = "\(gewicht)"
    }
    
    @IBOutlet var konstext: UILabel!
    
    @IBOutlet var gradtext: UILabel!
    
    @IBOutlet var konsslider: UISlider!
    
    @IBAction func konschange(sender: AnyObject) {
        kons = Int(konsslider.value)
        gradtext.text = "(\(kons)°C)"
        if kons < 62 {
            konstext.text = "flüssig"
        } else if kons < 75 {
            konstext.text = "weich"
        } else {
            konstext.text = "hart"
        }
    
    }
    
    @IBOutlet var switchstate: UISwitch!
    
    @IBAction func kühlchange(sender: AnyObject) {
        if switchstate.on {
            t_stat = 4
        } else {
            t_stat = 20
        }
    
    }
   
    
    @IBOutlet var kochzeittext: UILabel!

    
}


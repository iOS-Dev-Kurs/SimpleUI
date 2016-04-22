//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit
import Darwin


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 254 / 255.0, green: 249 / 255.0, blue: 55 / 255.0, alpha: 1 / 1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    var t_stat:Int = 4
    var t_statd:Double = 4
    var kochzeit:Double = 6
    var höhe:Int = 300
    var höhed:Double = 300
    var gewicht:Int = 50
    var gewichtd:Double = 50
    var kons:Int = 65
    var konsd:Double = 65
    
    var druckd:Double = 0
    var t_siedd:Double = 0
    
    
    @IBOutlet var höhetext: UILabel!
    
    @IBOutlet var höheslider: UISlider!

    @IBAction func höhechange(sender: AnyObject) {
        höhe = Int(höheslider.value)
        höhed = Double(höhe)
        höhetext.text = "\(höhe)"
        
        druckd = (1013.25*exp(-höhed/8000))
        t_siedd = (234.175*log(druckd/6.1078)/(17.08085 - log(druckd/6.1078)))
        kochzeit = (round((0.465*(pow(gewichtd,(2/3)))*log(0.76*(t_siedd-t_statd)/(t_siedd - konsd)))*10))/10
        kochzeittext.text = "\(kochzeit) Minuten"
    }
    
    
    @IBOutlet var gewichttext: UILabel!
    
    @IBOutlet var gewichtslider: UISlider!
    
    @IBAction func gewichtchange(sender: AnyObject) {
        gewicht = Int(gewichtslider.value)
        gewichtd = Double(gewicht)
        gewichttext.text = "\(gewicht)"
        
        druckd = (1013.25*exp(-höhed/8000))
        t_siedd = (234.175*log(druckd/6.1078)/(17.08085 - log(druckd/6.1078)))
        kochzeit = (round((0.465*(pow(gewichtd,(2/3)))*log(0.76*(t_siedd-t_statd)/(t_siedd - konsd)))*10))/10
        kochzeittext.text = "\(kochzeit) Minuten"
    }
    
    @IBOutlet var konstext: UILabel!
    
    @IBOutlet var gradtext: UILabel!
    
    @IBOutlet var konsslider: UISlider!
    
    @IBAction func konschange(sender: AnyObject) {
        kons = Int(konsslider.value)
        konsd = Double(kons)
        gradtext.text = "(\(kons)°C)"
        if kons < 62 {
            konstext.text = "flüssig"
        } else if kons < 75 {
            konstext.text = "weich"
        } else {
            konstext.text = "hart"
        }
        
        druckd = (1013.25*exp(-höhed/8000))
        t_siedd = (234.175*log(druckd/6.1078)/(17.08085 - log(druckd/6.1078)))
        kochzeit = (round((0.465*(pow(gewichtd,(2/3)))*log(0.76*(t_siedd-t_statd)/(t_siedd - konsd)))*10))/10
        kochzeittext.text = "\(kochzeit) Minuten"
    
    }
   
    @IBOutlet var switchstate: UISwitch!
    
    @IBAction func kühlchange(sender: AnyObject) {
        if switchstate.on {
            t_stat = 4
            t_statd = Double(t_stat)
        } else {
            t_stat = 20
            t_statd = Double(t_stat)
        }
        
        druckd = (1013.25*exp(-höhed/8000))
        t_siedd = (234.175*log(druckd/6.1078)/(17.08085 - log(druckd/6.1078)))
        kochzeit = (round((0.465*(pow(gewichtd,(2/3)))*log(0.76*(t_siedd-t_statd)/(t_siedd - konsd)))*10))/10
        kochzeittext.text = "\(kochzeit) Minuten"
        
    }
    
    
    
    @IBOutlet var kochzeittext: UILabel!

    
}


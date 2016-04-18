//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //
    // Benutzte Variablen
    //
    
    var women = true
    var opt_min = Float(0)
    var opt_max = Float(0)
    let opt_min_men = Float(20)
    let opt_max_men = Float(25)
    let opt_min_wom = Float(19)
    let opt_max_wom = Float(24)
    var bmi = Float(0)
    
    
    
    
    
    
    //
    // DOM-Elemente
    //
    
    // Geschlecht
    @IBOutlet weak var radioGeschlecht: UISegmentedControl!
    
    
    // Gewicht
    @IBOutlet weak var labelGewicht: UILabel!
    @IBOutlet weak var sliderGewicht: UISlider!
    
    // Größe
    @IBOutlet weak var labelGröße: UILabel!
    @IBOutlet weak var sliderGröße: UISlider!
    
    // Ausgabe
    @IBOutlet weak var labelBMI: UILabel!
    @IBOutlet weak var labelOpt: UILabel!
    
    
    
    
    
    

    //
    // Funktionen
    //
    
    // Berechne BMI und schreibe Ihn in Label
    func updateBMI() {
        bmi = 10000 * sliderGewicht.value / (sliderGröße.value * sliderGröße.value)
        updateOptimal()
        updateBackground()
        updateLabels()
    }
    
    // Verändere die Hintergrundfarbe
    // ToDo: ändere Farben in RGB mit Rotteil abhängig von Nähe zu Gewichtsgrenze
    func updateBackground() {
        if sliderGewicht.value > opt_max || sliderGewicht.value < opt_min {
            UIView.animateWithDuration(0.6, animations: {self.view.backgroundColor = UIColor.redColor()})
        } else {
            UIView.animateWithDuration(0.6, animations: {self.view.backgroundColor = UIColor.greenColor()})
        }
    }
    
    // Berechne Optimum erneut
    func updateOptimal() {
        if women {
            opt_min = opt_min_wom * (sliderGröße.value * sliderGröße.value) / 10000
            opt_max = opt_max_wom * (sliderGröße.value * sliderGröße.value) / 10000
        }
        else {
            opt_min = opt_min_men * (sliderGröße.value * sliderGröße.value) / 10000
            opt_max = opt_max_men * (sliderGröße.value * sliderGröße.value) / 10000
        }
    }
    // Updatet die Labels
    func updateLabels() {
        labelBMI.text = String(round(100*bmi)/100)
        labelOpt.text = "Optimaler Bereich: " + String(round(opt_min*10)/10) + " - " + String(round(opt_max*10)/10)
        labelGewicht.text = "Gewicht: " + String(round(10*sliderGewicht.value)/10)
        labelGröße.text = "Größe: " + String(round(sliderGröße.value)/100)
    }
    
    
    
    
    
    
    //
    // User-Actions 
    //
    @IBAction func changeGeschlecht(sender: AnyObject) {
        switch radioGeschlecht.selectedSegmentIndex {
        case 0:
            women = true;
        case 1:
            women = false;
        default:
            women = true;
        }
        updateBMI()
    }
    @IBAction func changeGewicht(sender: AnyObject) {
        updateBMI()
        
    }
    @IBAction func changeGroesse(sender: AnyObject) {
        updateBMI()
        
    }
    

}


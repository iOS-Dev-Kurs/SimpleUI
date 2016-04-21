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
    //Variable mit Startwert 0 deklarieren
    
    @IBOutlet var numberLabel: UILabel!
    
    
    
    @IBAction func increasingButtonPressed(sender: UIButton){
        count += 1
        updateLabel()
        
    }
    
    @IBAction func decreasingButtonPressed(sender: UIButton){
        count -= 1
        updateLabel()
    }

    
    @IBAction func resetButtonPressed(sender: UIButton){
        count = 0
        updateLabel()
    }

    
    
    
    func updateLabel() {
        if let text = String(count){
        
            numberLabel.text = "\(text)"
        }
        
    }
        
        
    
    
    
   
}


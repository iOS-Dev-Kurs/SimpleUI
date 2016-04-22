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
    @IBOutlet var counterLabel: UILabel!
    
    @IBAction func addButton(sender: UIButton) {
        count += 1
        counterLabel.text = String(count)
    }
    
    @IBAction func subButton(sender: UIButton) {
        count -= 1
        counterLabel.text = String(count)
    }
        
    @IBAction func resetButton(sender: AnyObject) {
        count = 0
        counterLabel.text = String(count)
    }
    
    
}


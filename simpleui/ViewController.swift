//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var nameTextfield: UITextField!
    @IBOutlet var greetingLabel: UILabel!
    
    @IBAction func greetingButtonPressed(sender: UIButton){
        if let name = nameTextfield.text where !name.isEmpty{
            greetingLabel.text = "Hello \(name)!"
        }else{
            greetingLabel.text="Hello World!"
        }
        
    }

}


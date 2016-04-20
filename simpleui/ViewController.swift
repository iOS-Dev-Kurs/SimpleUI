//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var setColorLabel: UILabel!
    
    @IBOutlet weak var setColorTextfield: UITextField!
   
    @IBAction func setColorButton(sender: AnyObject) {
        if let color = setColorTextfield.text {
            if color == "Grün" {
                self.view.backgroundColor = UIColor.greenColor()
            } else {
                self.view.backgroundColor = UIColor.blackColor()
            }
        }
        
        
    }
    
    

}


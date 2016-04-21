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
        numberLabel.text = String(count)
        
    }
    
    @IBAction func decreasingButtonPressed(sender: UIButton){
        count -= 1
        numberLabel.text = String(count)
    }

    
    @IBAction func resetButtonPressed(sender: UIButton){
        count = 0
        numberLabel.text = String(count)
    }

    
    
    
    //@IBOutlet var nameTextfield: UITextField!
    //@IBOutlet var greetingLabel: UILabel!
    
    //@IBAction func greetingButtonPressed(sender: UIButton){
      //  if let name = nameTextfield.text where !name.isEmpty{
        //    greetingLabel.text = "Hello \(name)!"
        //}else{
      //      greetingLabel.text="Hello World!"
        //}
        
    //}

}


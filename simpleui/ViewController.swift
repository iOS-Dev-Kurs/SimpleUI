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
    func updateLabel(choice: Int){
        if choice == -1{
            count-=1
        }
        if choice == 1{
            count+=1
        }
        if choice == 0{
            count=0
        }
    }
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        self.Label.text="\(count)"
        super.viewDidLoad()
    }
    
    @IBAction func PlusOne(sender: AnyObject) {
        updateLabel(1)
        Label.text = "\(count)"
    }
    @IBAction func MinusOne(sender: AnyObject) {
        updateLabel(-1)
        Label.text = "\(count)"
    }
    @IBAction func Reset(sender: AnyObject) {
        updateLabel(0)
        Label.text = "\(count)"
    }
    
}


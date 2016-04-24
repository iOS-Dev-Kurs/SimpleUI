//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nicolai Kaschta on 24.04.16.
//  Copyright © 2016 Nicolai Kaschta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var count = 0
    var step = 0
    
    @IBOutlet weak var disp: UILabel!
    @IBAction func decr(sender: AnyObject) {
        updateLabel(-1)
    }

    
    @IBAction func incr(sender: AnyObject) {
        updateLabel(+1)
    }
    
    
    
    @IBAction func reset(sender: AnyObject) {
        updateLabel(-count)
    }
    
    
    
    func updateLabel(step: Int) {
        count = step + count
        disp.text = String(count)
    }
    
    
}


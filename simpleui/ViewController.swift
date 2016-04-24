//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var rslider: UISlider!
	@IBOutlet weak var gslider: UISlider!
	@IBOutlet weak var bslider: UISlider!
	
	@IBOutlet var rvalue: UILabel!
	@IBOutlet var gvalue: UILabel!
	@IBOutlet var bvalue: UILabel!
	
	var red: Double = 1
	var green: Double = 1
	var blue: Double = 1
	
	
	let color = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
	
	var randomTimer: NSTimer?
	
	@IBAction func switchValueChanged(sender: UISwitch) {
		print("switch switched")
		if sender.on {
			randomTimer = NSTimer.scheduledTimerWithTimeInterval(2.0,target:self,selector:"randomButtonPressed:",userInfo:nil,repeats:true)
		} else {
			randomTimer?.invalidate()
			randomTimer = nil
		}
	}
	
	@IBAction func ColorChange(sender: AnyObject) {
		red = Double(rslider.value)
		green = Double(gslider.value)
		blue = Double(bslider.value)
		self.view.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1);
	}
	
	@IBAction func randomButtonPressed(sender: UIButton) {
		red = Double(arc4random_uniform(255)) / 255;
		green = Double(arc4random_uniform(255)) / 255;
		blue = Double (arc4random_uniform(255)) / 255;
		
		rslider.value = Float(red)
		gslider.value = Float(green)
		bslider.value = Float(blue)
		
		self.view.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1);
		print("random started")
	}

}


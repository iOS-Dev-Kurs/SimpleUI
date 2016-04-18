//
//  ViewController.swift
//  SimpleUI
//
//  Created by Nils Fischer on 06.03.15.
//  Copyright (c) 2015 Nils Fischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rs: UISlider!
    @IBOutlet weak var rl: UILabel!
    @IBOutlet weak var gs: UISlider!
    @IBOutlet weak var gl: UILabel!
    @IBOutlet weak var bs: UISlider!
    @IBOutlet weak var bl: UILabel!
    @IBOutlet weak var cs: UISlider!
    @IBOutlet weak var cl: UILabel!
    @IBOutlet weak var ms: UISlider!
    @IBOutlet weak var ml: UILabel!
    @IBOutlet weak var ys: UISlider!
    @IBOutlet weak var yl: UILabel!
    @IBOutlet weak var ks: UISlider!
    @IBOutlet weak var kl: UILabel!
    @IBOutlet weak var bg: UILabel!
    
    @IBAction func rgb(sender: AnyObject) {
        let r = rs.value / 2.55
        let g = gs.value / 2.55
        let b = bs.value / 2.55
        ks.value = 100 - max(r, g, b)
        cs.value = 100 * (100 - r - ks.value ) / ( 100 - ks.value )
        ms.value = 100 * (100 - g - ks.value ) / ( 100 - ks.value )
        ys.value = 100 * (100 - b - ks.value ) / ( 100 - ks.value )
        renewUI()
    }
    
    @IBAction func cmyk(sender: AnyObject) {
        let c = cs.value / 100
        let m = ms.value / 100
        let y = ys.value / 100
        let k = ks.value / 100
        rs.value = 255 * ( 1 - c ) * (1 - k )
        gs.value = 255 * ( 1 - m ) * (1 - k )
        bs.value = 255 * ( 1 - y ) * (1 - k )
        renewUI()
    }
    
    func renewUI () {
        bg.backgroundColor = UIColor(red: CGFloat(rs.value / 255), green: CGFloat(gs.value / 255), blue: CGFloat(bs.value / 255), alpha: 1)
        rl.text = "Red: \(Int(rs.value))"
        gl.text = "Green: \(Int(gs.value))"
        bl.text = "Blue: \(Int(bs.value))"
        cl.text = "Cyan: \(Int(cs.value))"
        ml.text = "Magenta: \(Int(ms.value))"
        yl.text = "Yellow: \(Int(ys.value))"
        kl.text = "Black: \(Int(ks.value))"
    }
    
}


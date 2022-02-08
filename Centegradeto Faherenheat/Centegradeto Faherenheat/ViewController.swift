//
//  ViewController.swift
//  Centegradeto Faherenheat
//
//  Created by Kota,Manoj on 2/8/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textfiled: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Submitbutton(_ sender: UIButton) {
        var a=Int(textfiled.text!)!
        //(0°C × 9/5) + 32 = 32°F
        var c=(a*9/5) + 32
        displayLabel.text = "the faherenheat value is\(c)"
        
    }
    
}


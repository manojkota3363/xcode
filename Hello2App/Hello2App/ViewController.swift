//
//  ViewController.swift
//  Hello2App
//
//  Created by Kota,Manoj on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var Grade: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClicked(_ sender: UIButton) {
        //Read the text from the text filed and store it in a variable
        var name=nameOutlet.text!
        var grade=Grade.text!
        //assign the text to the display label in this format Hello,name!
        displayLabel.text="Hello,\(name)! his grade is:\(grade)"
        
    }
    
}


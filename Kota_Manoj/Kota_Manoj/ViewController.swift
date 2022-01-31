//
//  ViewController.swift
//  Kota_Manoj
//
//  Created by Kota,Manoj on 1/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var initialsLabel: UILabel!
    @IBOutlet weak var display: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var fstname = firstNameTextField.text!
        var lstname = lastNameTextField.text!
        let c1 = fstname.prefix(1)
        let c2 = lstname.prefix(1)
        fullNameLabel.text="Full Name: \(fstname),\(lstname)"
        initialsLabel.text = "Initials:\(c1)\(c2)"
        display.text = "Details"
        
        
        }
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        firstNameTextField.text=""
        lastNameTextField.text=""
        fullNameLabel.text=" "
        initialsLabel.text=" "
        display.text=" "
        firstNameTextField.becomeFirstResponder()
        
        
        
    }
}


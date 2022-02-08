//
//  ViewController.swift
//  Even or Odd
//
//  Created by Kota,Manoj on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputTextField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitButton(_ sender: UIButton) {
        var a = Int(InputTextField.text!)!
        if a%2==0{
            displayLabel.text="\(a) is even number"
        }else{
            displayLabel.text="\(a) is a odd number"

        }
    }
    
}


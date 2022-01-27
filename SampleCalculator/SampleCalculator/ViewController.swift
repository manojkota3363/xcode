//
//  ViewController.swift
//  SampleCalculator
//
//  Created by Kota,Manoj on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var DisplayLabel: UILabel!
    var operand1 = -1.1;
    var operand2 = -1.2;
    var calcOperand=" "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Buttonplus(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "+"
        if calcOperand == " "{
            calcOperand="+"
        }
        
    }
    @IBAction func Buttonequals(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "="
        if calcOperand == "+"{
            DisplayLabel.text=DisplayLabel.text! + "\(operand1+operand2)"
        }
    }
    @IBAction func Button6(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "6"
        if operand1 == -1.1
        {
            operand1 = 6
        }else{
            operand2 = 6
        }
    }
    
    @IBAction func Button9(_ sender: Any) {
        DisplayLabel.text = DisplayLabel.text! + "9"
        if operand2 == -1.2
        {
            operand2 = 9
        }else{
            operand1 = 9
        }
    }
    
    
}


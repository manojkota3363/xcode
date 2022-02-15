//
//  ViewController.swift
//  Kota_Calculator
//
//  Created by Kota,Manoj on 2/13/22.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var DisplayButton: UILabel!
    //DisplayButton
        
       
    var firstOpearand:Double  = 0
        var sum = " "
    var dec=" "
    var DisplayNumber = " "
    var SecoundOperand:Double = 0
        var C = ""
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            DisplayButton.text = "0"
            }
        
    @IBAction func OneButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand*10+1
            //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand*10+1
            dec="secound"
            DisplayButton.text="\(SecoundOperand)"
                //DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func ZeroButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand*10
            //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            DisplayButton.text="\(firstOpearand)"

            dec="first"
        }else {
            SecoundOperand=SecoundOperand*10
            dec="secound"
            DisplayButton.text="\(SecoundOperand)"

                DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
    }
    @IBAction func twoButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand*10+2
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand*10+2
            dec="secound"
                DisplayButton.text="\(SecoundOperand)"
        }
        
    }
    @IBAction func threeButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand*10+3
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand*10+3
            dec="secound"
                DisplayButton.text="\(SecoundOperand)"
        }
        
    }
    @IBAction func fourButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand*10+4
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand*10+4
            dec="secound"
                DisplayButton.text="\(SecoundOperand)"
        }
        
    }
    @IBAction func fiveButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand*10+5
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand*10+5
            dec="secound"
                DisplayButton.text="\(SecoundOperand)"
        }
        
    }
    @IBAction func sixButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand*10+6
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand*10+6
            dec="secound"
                DisplayButton.text="\(SecoundOperand)"
        }
    }
    @IBAction func SevenButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand*10+7
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand*10+7
            dec="secound"
                DisplayButton.text="\(SecoundOperand)"
        }
        
    }
    @IBAction func eightButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand*10+8
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand*10+1
            dec="secound"
                DisplayButton.text="\(SecoundOperand)"
        }
        
    }
    @IBAction func NineButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand*10+9
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand*10+9
            dec="secound"
                DisplayButton.text="\(SecoundOperand)"
        }
    }
   
        
    @IBAction func dotPressed(_ sender: UIButton) {
            if dec == "first"{
                firstOpearand = firstOpearand*1
                
            }else if dec == "secound"{
                if DisplayNumber.count <= 7 {
                    DisplayNumber += "."
                    DisplayButton.text = DisplayNumber
                    
                }
                
            }
            
        }
        
        @IBAction func addButtonPressed(_ sender: UIButton) {
            DisplayButton.text=DisplayButton.text!+"+"
            C = "+"
            //performOperation(operator: "+")
        }
        
        @IBAction func subButtonPressed(_ sender: UIButton) {
            DisplayButton.text=DisplayButton.text!+"-"
            C = "-"
            //performOperation(operator: "-")
        }
        
        @IBAction func mulButtonPressed(_ sender: UIButton) {
            DisplayButton.text=DisplayButton.text!+"x"
            C = "*"
            //performOperation(operator: "*")
        }
        
        @IBAction func divButtonPressed(_ sender: UIButton) {
            DisplayButton.text=DisplayButton.text!+"/"
            C = "/"
            //performOperation(operator: "/")
        }
        
        @IBAction func signChangeButtonPressed(_ sender: UIButton) {
            var x=0
            if (x == 0) {
                C = "+"
                x=x+1
            }else{
                C = "-"
            }
            DisplayButton.text = DisplayButton.text!+C
        }
        
        @IBAction func clearButtonPressed(_ sender: UIButton) {
            DisplayNumber = ""
            DisplayButton.text = DisplayNumber
        }
        
        @IBAction func AllClearButtonPressed(_ sender: UIButton) {
            DisplayNumber = ""
            SecoundOperand = 0
            firstOpearand  = 0
            SecoundOperand = 0
            sum = ""
            C = ""
            DisplayButton.text = "0"
        }
        
        
        
        @IBAction func equalsButtonPressed(_ sender: UIButton) {
            DisplayButton.text = DisplayButton.text!+"="

           performOperation(operator: C)
            //var ans=Int();
            
            //DisplayButton.text = DisplayButton.text!+"="
        }
        
        func outputFormat(_ incomingResult:String) -> String {
            let inResult = Double(incomingResult)!
            var outResultStr = String(round(inResult * 100000) / 100000.0)
            if outResultStr.contains(".0") {
                outResultStr.removeSubrange(outResultStr.index(outResultStr.endIndex, offsetBy: -2)..<outResultStr.endIndex)
            }
            return outResultStr
        }
        
        func performOperation(operator: String){
            var Sum=" "
            if C != " " {
              
                  
                    
                    switch C{
                    case "+":
                         Sum = "\(SecoundOperand + firstOpearand)"
                        //sum = outputFormat(Sum)
                     
                    case "-":
                         Sum = "\(firstOpearand-SecoundOperand)"
                        //sum = outputFormat(sub)
                    case "*":
                         Sum = "\(SecoundOperand * firstOpearand)"
                        //sum = outputFormat(mult)
                    case "/":
                        if SecoundOperand == 0{
                            sum = "SecoundOperand shound not equal to zero "
                        }else{
                             Sum = "\(firstOpearand/SecoundOperand)"
                           // Sum = outputFormat(div)
                        }
                    default:
                        sum = ""
                    }
                    
                }
            DisplayButton.text=DisplayButton.text!+Sum
              
        }
        
}

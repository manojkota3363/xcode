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
        
       
    var firstOpearand:String = ""
        var sum = " "
    var dec=" "
    var DisplayNumber = " "
    var SecoundOperand:String = ""
        var C = ""
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            DisplayButton.text = "0"
            }
        
    @IBAction func OneButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand+"1"
            //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand+"1"
            dec="secound"
            DisplayButton.text="\(SecoundOperand)"
                //DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func ZeroButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand+"0"
            //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand+"0"
            dec="secound"
            DisplayButton.text="\(SecoundOperand)"
                //DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
    }
    @IBAction func twoButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand+"2"
            //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand+"2"
            dec="secound"
            DisplayButton.text="\(SecoundOperand)"
                //DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func threeButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand+"3"
            //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand+"3"
            dec="secound"
            DisplayButton.text="\(SecoundOperand)"
                //DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func fourButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand+"4"
            //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand+"4"
            dec="secound"
            DisplayButton.text="\(SecoundOperand)"
                //DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func fiveButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand+"5"
            //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand+"5"
            dec="secound"
            DisplayButton.text="\(SecoundOperand)"
                //DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func sixButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand+"6"
            //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand+"6"
            dec="secound"
            DisplayButton.text="\(SecoundOperand)"
                //DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
    }
    @IBAction func SevenButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand+"7"
            //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand+"7"
            dec="secound"
            DisplayButton.text="\(SecoundOperand)"
                //DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
          DisplayButton.text="\(SecoundOperand)"
            
        }
        
    }
    @IBAction func eightButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand+"8"
            //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand+"8"
            dec="secound"
            DisplayButton.text="\(SecoundOperand)"
                //DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func NineButton(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand+"9"
            //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand+"9"
            dec="secound"
            DisplayButton.text="\(SecoundOperand)"
                //DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
    }
   
        
    @IBAction func dotPressed(_ sender: UIButton) {
        if C == ""{
            firstOpearand=firstOpearand+"."
            //DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            DisplayButton.text="\(firstOpearand)"
            dec="first"
        }else {
            SecoundOperand=SecoundOperand+"."
            dec="secound"
            DisplayButton.text="\(SecoundOperand)"
                //DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
            
        }
        
        @IBAction func addButtonPressed(_ sender: UIButton) {
            DisplayButton.text=DisplayButton.text!+"+"
            C = "+"
            //performOperation(operator: "+")
        }
        
        @IBAction func subButtonPressed(_ sender: UIButton) {
            if(dec=="" && firstOpearand==""){
                firstOpearand=firstOpearand+"-"
            }
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
           
            DisplayButton.text = String(Double(DisplayButton.text!)! * -1)
        }
        
        @IBAction func clearButtonPressed(_ sender: UIButton) {
            DisplayNumber = ""
            DisplayButton.text = DisplayNumber
        }
        
        @IBAction func AllClearButtonPressed(_ sender: UIButton) {
            DisplayNumber = ""
            SecoundOperand = ""
            firstOpearand  = ""
            //SecoundOperand = 0
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
                         Sum = String(Double(firstOpearand)! + Double(SecoundOperand)!)
                        //sum = outputFormat(Sum)
                     
                    case "-":
                         Sum = String(Double(firstOpearand)!-Double(SecoundOperand)!)                        //sum = outputFormat(sub)
                    case "*":
                         Sum = String(Double(firstOpearand)! * Double(SecoundOperand)!)
                        //sum = outputFormat(mult)
                    case "/":
                        if SecoundOperand == "0"{
                            sum = "SecoundOperand shound not equal to zero "
                        }else{
                             Sum = "\(Double(firstOpearand)!/Double(SecoundOperand)!)"
                           // Sum = outputFormat(div)
                        }
                    default:
                        sum = ""
                    }
                    
                }
            DisplayButton.text=Sum
              
        }
        
}

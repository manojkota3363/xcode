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
        
       
    var firstOpearand:Int  = 0
        var sum = " "
    var dec=" "
    var DisplayNumber = " "
    var SecoundOperand:Int = 0
        var C = ""
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            DisplayButton.text = "0"
            }
        
    @IBAction func OneButton(_ sender: UIButton) {
        if firstOpearand == 0{
        firstOpearand=1
            DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            dec="first"
        }else if SecoundOperand == 0{
            SecoundOperand=1
            dec="secound"
                DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func ZeroButton(_ sender: UIButton) {
        if firstOpearand == 0{
        firstOpearand=0
            DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
        }else if SecoundOperand == 0{
            SecoundOperand=0
                DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        if dec == "first"{
            firstOpearand=firstOpearand*10
        }
        else if dec == "secound"{
            SecoundOperand=SecoundOperand*10
        }
    }
    @IBAction func twoButton(_ sender: UIButton) {
        if firstOpearand == 0{
        firstOpearand=2
            DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
            dec="first"
        }else if SecoundOperand == 0{
            dec="secound"
            SecoundOperand=2
                DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func threeButton(_ sender: UIButton) {
        if firstOpearand == 0{
        firstOpearand=3
            dec="first"
            DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
        }else if SecoundOperand == 0{
            SecoundOperand=3
            dec="secound"
                DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func fourButton(_ sender: UIButton) {
        if firstOpearand == 0{
        firstOpearand=4
            dec="first"
            DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
        }else if SecoundOperand == 0{
            dec="secound"
            SecoundOperand=4
                DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func fiveButton(_ sender: UIButton) {
        if firstOpearand == 0{
        firstOpearand=5
            dec="first"
            DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
        }else if SecoundOperand == 0{
            dec="secound"
            SecoundOperand=5
                DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func sixButton(_ sender: UIButton) {
        if firstOpearand == 0{
            dec="first"
        firstOpearand=6
            DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
        }else if SecoundOperand == 0{
            dec="secound"
            SecoundOperand=6
                DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func SevenButton(_ sender: UIButton) {
        if firstOpearand == 0{
        firstOpearand=7
            dec="first"
            DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
        }else if SecoundOperand == 0{
            dec="secound"
            SecoundOperand=7
                DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func eightButton(_ sender: UIButton) {
        if firstOpearand == 0{
            dec="first"
        firstOpearand=8
            DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
        }else if SecoundOperand == 0{
            dec="secound"
            SecoundOperand=8
                DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
        }
        
    }
    @IBAction func NineButton(_ sender: UIButton) {
        if firstOpearand == 0{
            dec="first"
        firstOpearand=9
            DisplayButton.text=DisplayButton.text!+"\(firstOpearand)"
        }else if SecoundOperand == 0{
            dec="secound"
            SecoundOperand=9
                DisplayButton.text=DisplayButton.text!+"\(SecoundOperand)"
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

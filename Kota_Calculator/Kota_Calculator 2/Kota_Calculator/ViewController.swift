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
    var e=""
        
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
                firstOpearand="-"+firstOpearand
                DisplayButton.text=firstOpearand
            }else{
            DisplayButton.text=DisplayButton.text!+"-"
            C = "-"
            DisplayButton.text = C
            //performOperation(operator: "-")
            }
            C = "-"
            DisplayButton.text = C
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
            if(SecoundOperand==""){
                
            }else{
                SecoundOperand=""
            }
            DisplayButton.text=SecoundOperand
                //SecoundOperand
            
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
        
    @IBAction func Modules(_ sender: UIButton) {
        DisplayButton.text="%"
        C = "%"
        DisplayButton.text="%"
    }
    
        
        @IBAction func equalsButtonPressed(_ sender: UIButton) {
            //DisplayButton.text = DisplayButton.text!+"="
            DisplayButton.text = firstOpearand+C+SecoundOperand

           performOperation(operator: C)
            //DisplayButton.text = firstOpearand+
            //var ans=Int();
            
            //DisplayButton.text = DisplayButton.text!+"="
        }
        
       
        
        func performOperation(operator: String){
            var Sum=" "
            if(firstOpearand.contains(".")||SecoundOperand.contains(".")){
                
            }
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
                    case "%":
                        /* Sum = String(Double(firstOpearand)! % Double(SecoundOperand)!)*/
                        let x=Double(firstOpearand)!
                        let q=Double(SecoundOperand)!
                        let r = x.truncatingRemainder(dividingBy: q)
                         Sum=String(r)
                    case "/":
                        if Double(SecoundOperand)! == 0.0{
                            e="Error"
                            DisplayButton.text = "Error"
                        }else{
                             Sum = "\(Double(firstOpearand)!/Double(SecoundOperand)!)"
                           // Sum = outputFormat(div)
                        }
                    default:
                        sum = ""
                    }
                    
                }
            if(e=="Error"){
                DisplayButton.text = "Error"

            }else{
            
            let value = Double(Sum)!
            var resultStr = String(round(value * 100000) / 100000.0)
            
            if resultStr.contains(".0"){
                resultStr.removeSubrange(resultStr.index(resultStr.endIndex, offsetBy: -2)..<resultStr.endIndex)
            }
            DisplayButton.text=resultStr
            }
              
        }
        
}

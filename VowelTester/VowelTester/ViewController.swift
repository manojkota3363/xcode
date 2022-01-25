//
//  ViewController.swift
//  VowelTester
//
//  Created by Kota,Manoj on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextFiled: UITextField!
    @IBOutlet weak var diplay: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func ButtonDisplay(_ sender: Any) {
        var text = TextFiled.text!
        if(text.contains("a") || text.contains("e"))
        {
            diplay.text="the text has vowel"
        }else{
            diplay.text = "no vowel found"
        }
        
        
    }
    
    
    
    

}

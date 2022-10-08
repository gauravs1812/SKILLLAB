//
//  ViewController.swift
//  CALC
//
//  Created by APPLE on 06/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var NumberOnScreen:Double = 0
    var PreviousNumebr:Double = 0
    var performMathOp = false
    var operation = 0
    
    
    
    
    @IBOutlet weak var calcLabel: UILabel!
    
    
    
    
    @IBAction func OpertaorBTN(_ sender: UIButton)
    {
        if calcLabel.text != "" && sender.tag != 16 && sender.tag != 15
        {
            PreviousNumebr = Double(calcLabel.text!)!
            
            if sender.tag == 11 //Addition
            {
                calcLabel.text = "+"
            }
            else if sender.tag == 12 //Sub
            {
                calcLabel.text = "-"
            }
            else if sender.tag == 13 //Division
            {
                calcLabel.text = "/"
            }
            else if sender.tag == 14 //Multiplication
            {
                calcLabel.text = "*"
              }
            
            operation = sender.tag
            
            performMathOp = true
        }
    
        
    }
    
    @IBAction func OprantBTN(_ sender: UIButton) {
        
        if performMathOp==true
        {
    
            calcLabel.text =  String(sender.tag-1)
            
            NumberOnScreen = Double(calcLabel.text!)!
         performMathOp=false
        
        }
        else
        {
            calcLabel.text = calcLabel.text! + String(sender.tag-1)
            NumberOnScreen = Double(calcLabel.text!)!
            
    }
    
    }
    
    @IBAction func EQUALBTN(_ sender: UIButton) {
        if sender.tag == 16
        {
        switch(operation)
        {
        case 11 : calcLabel.text = String(PreviousNumebr + NumberOnScreen )
        case 12 : calcLabel.text = String( PreviousNumebr - NumberOnScreen )
        case 13 : calcLabel.text = String(PreviousNumebr / NumberOnScreen)
        case 14 : calcLabel.text = String (PreviousNumebr * NumberOnScreen)
        default : calcLabel.text = String("Invalid")
        }
 }

    }
    
    
    
    
        
    @IBAction func CLEARBTN(_ sender: UIButton) {
        if sender.tag == 15
        {
            calcLabel.text = "0"
            PreviousNumebr = 0
            NumberOnScreen = 0
            operation = 0
        }
        
    }
    override func viewDidLoad()
        {
            super.viewDidLoad()
        }
    }


//
//  ViewController.swift
//  new
//
//  Created by APPLE on 06/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TP: UILabel!
    @IBOutlet weak var Price: UITextField!
    
    @IBOutlet weak var Salestax: UITextField!


    @IBAction func CALC(_ sender: UIButton) {
        var PP:Double = 0
        var ST:Double = 0
            PP =  Double(Price.text!)!
            ST = Double(Salestax.text!)!
             let totalSalesTax = PP *  ST
             let totalPrice = PP + totalSalesTax
             TP.text = String("$\(totalPrice)")
             
        
         }    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}


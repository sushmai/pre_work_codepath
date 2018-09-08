//
//  ViewController.swift
//  TipCalculator
//
//  Created by admin on 9/8/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLable: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func OnTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentage = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLable.text = String(format: "$%.2f", total)
    }
    
}


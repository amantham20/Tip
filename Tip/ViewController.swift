//
//  ViewController.swift
//  Tip
//
//  Created by Aman Dhruva Thamminana on 9/3/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    //@IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var splitAmountTextField: UILabel!
    @IBOutlet weak var splitControl: UISegmentedControl!
    @IBOutlet weak var myView: UIView!
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        let splitNumbers = [1.0, 2.0, 3.0, 4.0, 5.0]
        
        // calculate tip and total
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        let split = total / splitNumbers[splitControl.selectedSegmentIndex]
        
        // update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitAmountTextField.text = String(format: "$%.2f", split)
    }
                        
    
    

}


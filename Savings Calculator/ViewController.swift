//
//  ViewController.swift
//  Savings Calculator
//
//  Created by jordan on 28/11/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var yearlyIncomeTextField: UITextField!
    @IBOutlet weak var itemCostTextField: UITextField!
    @IBOutlet weak var numPerWeekTextField: UITextField!
    
    @IBOutlet weak var monthlyIncomeLabel: UILabel!
    @IBOutlet weak var weeklyIncomeLabel: UILabel!
    @IBOutlet weak var dailyIncomeLabel: UILabel!
    
    @IBOutlet weak var weeklySavingsLabel: UILabel!
    @IBOutlet weak var monthlySavingsLabel: UILabel!
    @IBOutlet weak var yearlySavingsLabel: UILabel!
    
    var income = 0
    var monthlyIncome = 0
    var weeklyIncome = 0
    var dailyIncome = 0
    
    var itemCost = 0
    var numBought = 0
    var weeklySavings = 0
    var monthlySavings = 0
    var yearlySavings = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //UITextFieldDelegate functions
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        yearlyIncomeTextField.resignFirstResponder()
        itemCostTextField.resignFirstResponder()
        numPerWeekTextField.resignFirstResponder()
    }
    
    // IBActions
    @IBAction func calculateButton(sender: AnyObject) {
        calculateIncomes()
        calculateSavings()
        
        monthlyIncomeLabel.text = "\(monthlyIncome)"
        weeklyIncomeLabel.text = "\(weeklyIncome)"
        dailyIncomeLabel.text = "\(dailyIncome)"
        
        weeklySavingsLabel.text = "\(weeklySavings)"
        monthlySavingsLabel.text = "\(monthlySavings)"
        yearlySavingsLabel.text = "\(yearlySavings)"
    }
    
    // Helper functions
    
    func calculateIncomes() {
        let incomeAsString = yearlyIncomeTextField.text
        if incomeAsString.toInt() != nil {
            income = incomeAsString.toInt()!
        }
        
        monthlyIncome = income / 12
        weeklyIncome = income / 52
        dailyIncome = income / 365
        
    }
    func calculateSavings() {
        let itemCostAsString = itemCostTextField.text
        let numBoughtAsString = numPerWeekTextField.text
        
        if itemCostAsString.toInt() != nil {
            itemCost = itemCostAsString.toInt()!
        }
        if numBoughtAsString.toInt() != nil {
            numBought = numBoughtAsString.toInt()!
        }
        
        weeklySavings = itemCost * numBought
        monthlySavings = weeklySavings * 4
        yearlySavings = monthlySavings * 12
    }
}































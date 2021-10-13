//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by ysf on 13.10.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addiation(_ sender: Any) {
        if let firsNum = Int(firstNumber.text!) {
            if let secondNum = Int(secondNumber.text!) {
                let res = firsNum + secondNum
                result.text = String(res)
            }
        }
        
    
    }
    @IBAction func subtraction(_ sender: Any) {
        
        if let firsNum = Int(firstNumber.text!) {
            if let secondNum = Int(secondNumber.text!) {
                let res = firsNum - secondNum
                result.text = String(res)
            }
        }
    }
    
    @IBAction func Division(_ sender: Any) {
        
        if let firsNum = Int(firstNumber.text!) {
            if let secondNum = Int(secondNumber.text!) {
                let res = firsNum / secondNum
                result.text = String(res)
            }
        }
    }
    
    
    @IBAction func multifuction(_ sender: Any) {
        
        if let firsNum = Int(firstNumber.text!) {
            if let secondNum = Int(secondNumber.text!) {
                let res = firsNum * secondNum
                result.text = String(res)
            }
        }
    }
}


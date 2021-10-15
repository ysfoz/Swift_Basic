//
//  ViewController.swift
//  SignUpPage
//
//  Created by ysf on 15.10.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var password2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signUpClicked(_ sender: Any) {
        if userName.text == "" {
            alertCreator(title: "Error!", message: "Username not found")
        } else if Int(password.text!.count) < 6 {
           alertCreator(title: "Error!", message: "Password cannot be empty or less than 6 character")
        } else if password.text != password2.text {
            alertCreator(title: "Error!", message: "Passwords are not match")
        } else {
            alertCreator(title: "Success", message: "you can login successfully")
            
        }
        
    }
   
    func alertCreator(title : String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
}


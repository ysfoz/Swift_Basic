//
//  ViewController.swift
//  AsyncStorage
//
//  Created by ysf on 14.10.21.
//

import UIKit

class ViewController: UIViewController {

    let nameInput = UITextField()
    let ageInput = UITextField()
    let buttonSave = UIButton()
    let buttonDel = UIButton()
    let nameLabel = UILabel()
    let ageLabel = UILabel()
    
    // this Method as in React native UseEffect({func},[]) while the App first open
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        nameInput.placeholder = "Enter your name"
        nameInput.frame = CGRect(x: width * 0.5 - width * 0.7 / 2, y: height * 0.1, width: width * 0.7, height: 100)
        view.addSubview(nameInput)
        
       
        ageInput.placeholder = "Enter your age"
        ageInput.frame = CGRect(x: width * 0.5 - width * 0.7 / 2, y: height * 0.2, width: width * 0.7, height: 100)
        view.addSubview(ageInput)
        
        
        buttonSave.setTitle("Save", for: UIControl.State.normal)
        buttonSave.setTitleColor(UIColor.green, for: UIControl.State.normal)
        buttonSave.frame = CGRect(x: width * 0.2  - width * 0.3 / 2, y: height * 0.3, width: width * 0.3, height: 100)
        view.addSubview(buttonSave)
        buttonSave.addTarget(self, action: #selector(saveInfo), for: UIControl.Event.touchUpInside)
        
        buttonDel.setTitle("Delete", for: UIControl.State.normal)
        buttonDel.setTitleColor(UIColor.red, for: UIControl.State.normal)
        buttonDel.frame = CGRect(x: width * 0.8 - width * 0.3 / 2, y: height * 0.3, width: width * 0.3, height: 100)
        view.addSubview(buttonDel)
        buttonDel.addTarget(self, action: #selector(deleteInfo), for: UIControl.Event.touchUpInside)
        
       
        nameLabel.text = "Name"
        nameLabel.frame = CGRect(x: width * 0.5 - width * 0.7 / 2, y: height * 0.4, width: width * 0.7, height: 100)
        view.addSubview(nameLabel)
        
       
        ageLabel.text = "Name"
        ageLabel.frame = CGRect(x: width * 0.5 - width * 0.7 / 2, y: height * 0.5, width: width * 0.7, height: 100)
        view.addSubview(ageLabel)
        
        let savedName = UserDefaults.standard.object(forKey: "name")
        let savedAge = UserDefaults.standard.object(forKey: "age")
        
        if let name  = savedName as? String {
            nameLabel.text = "Name : \(name)"
        }
        
        if let age = savedAge as? String {
            ageLabel.text = "Age : \(age)"
        }
        
    }
    
     @objc func saveInfo() {
        
        // with userDefaults class can save the info in local storage
        
        UserDefaults.standard.set(nameInput.text!, forKey: "name")
        UserDefaults.standard.set(ageInput.text!, forKey: "age")

        
        nameLabel.text = " Name : \(nameInput.text!)"
        ageLabel.text = " Age : \(ageInput.text!)"
    }
    
    //
    @objc func deleteInfo() {
        let savedName = UserDefaults.standard.object(forKey: "name")
        let savedAge = UserDefaults.standard.object(forKey: "age")
        
        if (savedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name : "
        }
        
        if (savedAge as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "age")
            ageLabel.text = "Age : "
        }
    }


}

//Video 47 - 50


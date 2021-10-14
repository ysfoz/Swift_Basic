//
//  ViewController.swift
//  projectLayout
//
//  Created by ysf on 14.10.21.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Dimension width und height
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        // adding a Label without storyboard
     
        myLabel.text = "Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.5 / 2, y: height * 0.5, width: width * 0.5, height: 50)
        view.addSubview(myLabel)
        
        //adding a Button without story board
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.6, width: 200, height: 100)
        view.addSubview(myButton)
        
        // Adding a connection between button and label
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func myAction() {
        myLabel.text = "Tapped"
    }


}


//
//  ViewController.swift
//  projectLayout
//
//  Created by ysf on 14.10.21.
//

import UIKit

class ViewController: UIViewController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Dimension width und height
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        // adding an Item without storyboard
        let myLabel = UILabel()
        myLabel.text = "Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.5 / 2, y: height * 0.5, width: width * 0.5, height: 50)
        view.addSubview(myLabel)
        
    }


}


//
//  SecondViewController.swift
//  SegueApp
//
//  Created by ysf on 15.10.21.
//

import UIKit

class SecondViewController: UIViewController {

    var myName = ""
    @IBOutlet weak var myLabel2: UILabel!
    
    @IBOutlet weak var secondName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondName.text = myName

        // Do any additional setup after loading the view.
    }
    
  
  

}

//
//  ViewController.swift
//  MyFirstApp
//
//  Created by ysf on 12.10.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeButtonClicked(_ sender: Any) {
        imageView.image = UIImage(named: "meyve2")
        
    }
    
}


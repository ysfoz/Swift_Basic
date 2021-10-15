//
//  ViewController.swift
//  gestureRecognizer
//
//  Created by ysf on 15.10.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    var isAngel2 = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        image.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        image.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func changeImage() {
        if isAngel2 {
            image.image = UIImage(named: "angel1")
            label.text = "Angel 1"
            isAngel2 = false
            
        } else {
            image.image = UIImage(named: "angel2")
            label.text = "Angel 2"
            isAngel2 = true
        }
        
    }


}


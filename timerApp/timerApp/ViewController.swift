//
//  ViewController.swift
//  timerApp
//
//  Created by ysf on 15.10.21.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var counter = 0

    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        timeLabel.text = "Time : \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(changeTimer), userInfo: nil, repeats: true)
        
    }
    @objc func changeTimer() {
        counter -= 1
        timeLabel.text = "Time : \(counter)"
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time's over"
        }
    }

    
    @IBAction func buttonClicked(_ sender: Any) {
    }
    
    
    
}


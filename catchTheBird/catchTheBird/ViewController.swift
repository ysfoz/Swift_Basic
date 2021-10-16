//
//  ViewController.swift
//  catchTheBird
//
//  Created by ysf on 16.10.21.
//

import UIKit

class ViewController: UIViewController {
    var timer  = Timer()
    var birdtimer = Timer()
    var counter = 0
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    let image = UIImageView(image: UIImage(named: "bird"))
    var width = CGFloat(0)
    var height = CGFloat(0)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterReset()
        birdTimeReset()
        image.frame = CGRect(x: width , y: height , width: 100, height: 100)
        view.addSubview(image)
        
    }
    
    func birdTimeReset() {
        width = view.frame.size.width * CGFloat(Float.random(in: 0.1 ..< 0.7))
        height = view.frame.size.height * CGFloat(Float.random(in: 0.1 ..< 0.7))
        birdtimer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(changeBirdTimer), userInfo: nil, repeats: true)
        
    }
    func counterReset() {
        counter = 10
        timeLabel.text = String(counter)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(changeTimer), userInfo: nil, repeats: true)
    }
    @objc func changeBirdTimer() {
        width = view.frame.size.width * CGFloat(Float.random(in: 0.1 ..< 0.7))
        height = view.frame.size.height * CGFloat(Float.random(in: 0.1 ..< 0.7))
        image.frame = CGRect(x: width , y: height , width: 100, height: 100)
        view.addSubview(image)
        if counter <= 0 {
            birdtimer.invalidate()
        }
    }
    
    @objc func changeTimer() {
        counter -= 1
        timeLabel.text = String(counter)
        if counter <= 0 {
            timer.invalidate()
            // buraya Times is up yerine scoru koyalim
            let alert = UIAlertController(title: "Your Score : ", message: "Do you want to play again ", preferredStyle: UIAlertController.Style.alert)
            let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { UIAlertAction in
//                self.counter = 10
                self.counterReset()
                self.birdTimeReset()
            }
//
            alert.addAction(cancelButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true, completion: nil)
           
        }
    }


}


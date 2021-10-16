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
    var score = 0
    var savedHighScore : Int {UserDefaults.standard.integer(forKey: "highScore")}
    
    
   
    
    
    @IBOutlet weak var replayBuuton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterReset()
        birdTimeReset()
        image.frame = CGRect(x: width , y: height , width: 100, height: 100)
        view.addSubview(image)
        replayBuuton.isHidden = true
        image.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeScore))
        image.addGestureRecognizer(gestureRecognizer)
        scoreLabel.text = String(score)
        highScoreLabel.text = "HighScore : \(String(savedHighScore))"
     
       
        
        
    }
    @objc func changeScore() {
        score += 1
        scoreLabel.text = String(score)
        if score > savedHighScore {
            UserDefaults.standard.set(score, forKey: "highScore")
            highScoreLabel.text = "HighScore : \(String(savedHighScore))"
            
        }
    }
    
    @IBAction func replayclicked(_ sender: Any) {
        self.counterReset()
        self.birdTimeReset()
        
    
    }
    
    func birdTimeReset() {
        width = view.frame.size.width * CGFloat(Float.random(in: 0.1 ..< 0.7))
        height = view.frame.size.height * CGFloat(Float.random(in: 0.1 ..< 0.7))
        birdtimer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(changeBirdTimer), userInfo: nil, repeats: true)
        
    }
    func counterReset() {
        score = 0
      scoreLabel.text = String(0)
        self.replayBuuton.isHidden = true
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
            let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) { UIAlertAction in
                self.replayBuuton.isHidden = false
            }
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { UIAlertAction in
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


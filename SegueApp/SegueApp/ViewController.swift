//
//  ViewController.swift
//  SegueApp
//
//  Created by ysf on 15.10.21.
//

import UIKit

class ViewController: UIViewController {
var userName = ""
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var myLabel1: UILabel!
    
    // Lifecycle //
    
    //1- viewDidLpad  -  while open the Page first, sadece ilk render adildiginde cagrilir
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad called")
    }
    
    // viewDidLoad sadece en basta calisirken , digerleri her sayfa acilisinda calisir.
    //2 viewwillAppear - kullanici gorunumu henuz gormedi , henuz oncesi
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear called")
        nameField.text = ""
    }
    
    //3 viewDidAppear - sayfayi actin ve kullniciya gosterildi, hemen sonrasi
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear called")
    }
    
    
    //4 viewWillDisappear  - kullanici sayfadan cikmak icin istekte bulndu
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear called")
    }
    //5 kullanici sayfadan cikti
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear called")
    }
    
   
    
    
    
  
   
    
    
   // to go next page 'performSegue'
    @IBAction func nextPage(_ sender: Any) {
        userName = nameField.text!
       performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    // to send value to next page 'prepare , segue.destination'
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
           // as  -- casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
  
    
}


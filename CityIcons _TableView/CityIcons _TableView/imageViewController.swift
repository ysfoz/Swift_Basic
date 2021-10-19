//
//  imageViewController.swift
//  CityIcons _TableView
//
//  Created by ysf on 19.10.21.
//

import UIKit

class imageViewController: UIViewController {


    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var selectedCity = ""
    var selectedImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = selectedCity
        image.image = selectedImage
      
    }
   
    

   

}

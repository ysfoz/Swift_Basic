//
//  ViewController.swift
//  darkMode
//
//  Created by ysf on 03.11.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // her zaman bu view controller in light modda calismasi icin
        overrideUserInterfaceStyle = .light
       
        // eger tum appin sadec light yada dark modda calismasi isteniyorsa info.plist te user interface stle dark yada light yazilir.
       
        
    }
    
    // bu fonksiyon ile treatlerin yani dark mod gibi ozelliklerin degisiklikleri algilanarak render edilmesi saglanir
    
     override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
         let userInterfaseStyle = traitCollection.userInterfaceStyle
         
         if userInterfaseStyle == .dark {
             changeButton.tintColor = UIColor.white
         } else {
             changeButton.tintColor = UIColor.green
         }
    }


}

// esasinda iphone icerisinde dark apperiance secilerek app lerin dark moda gcmesi saglanabiliyor. Ama default renkleri ve ayarlari degistirebilmek icin bu tur kodlar yazmak lazim


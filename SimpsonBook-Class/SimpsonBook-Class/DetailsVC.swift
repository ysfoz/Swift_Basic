//
//  DetailsVC.swift
//  SimpsonBook-Class
//
//  Created by ysf on 20.10.21.
//

import UIKit

class DetailsVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedMember : Members?
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedMember?.name
        jobLabel.text = selectedMember?.job
        imageView.image = selectedMember?.image
    }
    

}

//
//  ViewController.swift
//  CityIcons _TableView
//
//  Created by ysf on 17.10.21.
//

import UIKit
// TableView eklendiginde 5 islem yapilir

// 1-  UITableViewDataSource, UITableViewDelegate eklenir
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var itemList = [String]()
    var imageList = [UIImage]()
    var selectedCity = ""
    var selectedImage = UIImage()
   
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // DATA
        itemList.append("bogaz")
        itemList.append("chicago")
        itemList.append("düsseldorf")
        itemList.append("Eifel")
        itemList.append("taj mahal")
        
        imageList.append(UIImage(named: "bogaz")!)
        imageList.append(UIImage(named: "chicago")!)
        imageList.append(UIImage(named: "düsseldorf")!)
        imageList.append(UIImage(named: "Eifel")!)
        imageList.append(UIImage(named: "indir")!)
        
        
        // 4, 5  - alttakiler eklenir
        tableView.delegate = self
        tableView.dataSource = self
        
        // navigation a baslik eklemek icin
        navigationItem.title = "Landmark Book"
        
        
    }
    
    
    // 2- numberOfRowsInSection eklenir
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    
    // 3 cellForRowAt eklenir
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = itemList[indexPath.row]
        return cell
    }
    
    // DELETE
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            itemList.remove(at: indexPath.row)
            imageList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.bottom)
        }
    }
    
    // toImageViewController
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCity = itemList[indexPath.row]
        selectedImage = imageList[indexPath.row]
        
        performSegue(withIdentifier: "toImageViewController", sender: nil)
    }
    
    // transport to values
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController" {
            let destinationVC = segue.destination as! imageViewController
            destinationVC.selectedCity = selectedCity
            destinationVC.selectedImage = selectedImage
        }
    }

}


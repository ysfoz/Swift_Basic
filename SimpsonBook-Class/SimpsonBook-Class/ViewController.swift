//
//  ViewController.swift
//  SimpsonBook-Class
//
//  Created by ysf on 20.10.21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
   
    
    @IBOutlet weak var tableView: UITableView!
    var memberList = [Members]()
    var selectedMember : Members?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        let homer = Members(name: "Homer Simpson", job: "Sicherheitsinspektor", image: UIImage(named: "Homer_Simpson")!)
        let edna = Members(name: "EDNA", job: "Grundschullehrerin", image: UIImage(named: "EDNA")! )
        let uter = Members(name: "Uter Zörker", job: "Schüler", image: UIImage(named: "Uter_Zörker")!)
        let burns = Members(name: "Burns", job: "Chef", image:  UIImage(named: "Burns")!)
        let skinner = Members(name: "Skinner", job: "Rektor ", image: UIImage(named: "Skinner")!)
        
        memberList.append(homer)
        memberList.append(edna)
        memberList.append(uter)
        memberList.append(burns)
        memberList.append(skinner)
       
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memberList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = memberList[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMember = memberList[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedMember = selectedMember
        }
    }

}


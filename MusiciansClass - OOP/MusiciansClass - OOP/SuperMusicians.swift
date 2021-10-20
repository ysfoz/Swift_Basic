//
//  SuperMusicians.swift
//  MusiciansClass - OOP
//
//  Created by ysf on 20.10.21.
//

import Foundation

class SuperMusicians : Musicians {
    
    func singDavid() {
        print("David sings")
    }
    override func sing() {
        super.sing()
        print("playing 2 songs")
    }
    
}

//
//  Musicians.swift
//  MusiciansClass - OOP
//
//  Created by ysf on 20.10.21.
//

import Foundation

// Enum
// kullaniciya belirli secenekler sunuyoruz, boylee farkli bir girdi veremiyor.
enum MusiciansType {
    case guitarist
    case batterist
    case singer
    case bas
}


//Property
class Musicians {
    var name : String
    var age : Int
    var instrument : String
    // burada veri tipini olusturdugumuz enum olarak veriyoruz
    var type : MusiciansType
    
//Initializer (Constructor)
    init(name:String,age:Int,instrument:String,type:MusiciansType) {
        self.name = name
        self.age = age
        self.instrument = instrument
        self.type = type
    }
    
// Method
    func sing(){
        print("songs 1 playing")
    }
    
    //Access Levels
    
    // private : sadece tanimlandigi class ta kullanilir , fileprivate, internal: proje icerisinde tum alanlardan ulasilabilir defaultu bu, public : herkes erisebilir ama degistiremez, open: paketlerde kullanilir herkes erisiz ve degistirebilir.
    
// sadece bu class icersinde ulasilir, diger sayflaradan ulasima kapali
    private func test(){
        print("test")
    }
}

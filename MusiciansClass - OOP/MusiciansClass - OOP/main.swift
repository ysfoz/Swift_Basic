//
//  main.swift
//  MusiciansClass - OOP
//
//  Created by ysf on 20.10.21.
//

import Foundation

let ketty = Musicians(name: "Ketty Perry", age: 37, instrument: "Guitar", type: .singer)

print(ketty.age, ketty.type)

let david = SuperMusicians(name: "David Guatta", age: 42, instrument: "guitar", type: .singer)

print(david.instrument)

ketty.sing()
david.sing()


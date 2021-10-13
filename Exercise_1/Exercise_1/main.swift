//
//  main.swift
//  Exercise_1
//
//  Created by ysf on 13.10.21.
//

import Foundation

//print("Hello, World!")

// Variable & Constants

var val1 = 4 * 5
//print(val1)

var str = "example"
str.append("add")

print(str)

var myNum = 0

while myNum <= 10{
//    print(myNum)
    myNum += 1
}


var myList = [10,20,30,40,50]

for x in  myList {
//   print(x / 2)
}

for y in 3 ... 9 {
//    print(y)
}

func sum(x:Int, y:Int) -> Bool {
    if x > y {
        return true
    } else {
        return false
    }
   
}

let numm = sum(x: 4, y: 6)
//print(numm)

var ss = "dd"

if let mynum2 = Int(ss){
    print(ss)
} else {
    print("cc")
}


var int = Int(ss) ?? 0
print(int)

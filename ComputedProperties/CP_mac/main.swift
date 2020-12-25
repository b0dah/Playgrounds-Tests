//
//  main.swift
//  CP_mac
//
//  Created by Иван Романов on 16.12.2020.
//  Copyright © 2020 Иван Романов. All rights reserved.
//

import Foundation

struct Man {
    var age: Int
    
    var birthYear: Int {
        get {
            return Calendar.current.component(.year, from: Date()) - age
        }
        
        set {
            age = Calendar.current.component(.year, from: Date()) - newValue
        }
    }
}

var vasya = Man(age: 12)
print(vasya.birthYear)

vasya.birthYear = 1992
print(vasya.age)


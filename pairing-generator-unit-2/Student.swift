//
//  Student.swift
//  pairing-generator-unit-2
//
//  Created by David Rifkin on 7/30/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

struct Student: Person {
    let name: String
    let image: String
    let pastMatches: [String]
    
    init(name: String) {
        self.name = name
        image = String.getFormattedImageName(name: name)
        pastMatches = Global.Data.getPreviousPairs(forName: name)
    }
//    func pickMatch() -> Student {
//        while true {
//            let randomStudent = getRandomStudent()
//
//            if checkIfAlreadyPaired(currentPerson: self,potentialMatch: randomStudent.name){
//                continue
//            } else {
//                return randomStudent
//            }
//        }
//    }
    
    func seeIfAlreadyPaired(potentialMatch name: String) -> Bool {
        return self.pastMatches.contains(name)
    }
}

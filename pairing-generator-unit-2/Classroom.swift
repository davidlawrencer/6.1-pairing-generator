//
//  ClassPairing.swift
//  pairing-generator-unit-2
//
//  Created by David Rifkin on 7/30/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

struct Classroom {
    var students = [Student]()
    
    init() {
        students = generateStudentsFromAttendance()
    }
    
    private func generateStudentsFromAttendance() -> [Student] {
        let studentNames = Global.Data.fellowNames
        return studentNames.map({a in
            Student(name: a)
        })
    }
        
    private func getRandomStudent() -> Student? {
        return students.randomElement()
    }
}


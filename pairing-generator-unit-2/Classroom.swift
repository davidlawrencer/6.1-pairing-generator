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
        let studentNames = Global.getStudentNames()
        return studentNames.map({a in
            createNewStudentFromName(a)
        })
    }
    
    private func createNewStudentFromName(_ name: String) -> Student {
        let imageName = getFormattedImageName(name: name)
        let pastMatches = Global.getPreviousPairs(forName: name)
        return Student(name: name, image: imageName, pastMatches: pastMatches)
    }
    
    private func getFormattedImageName(name: String) -> String {
            return name.lowercased().split(separator: " ").joined(separator: "-")
    }
    
    private func getRandomStudent() -> Student? {
        return students.randomElement()
    }

}


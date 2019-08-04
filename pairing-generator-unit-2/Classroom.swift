//
//  ClassPairing.swift
//  pairing-generator-unit-2
//
//  Created by David Rifkin on 7/30/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

struct Classroom {
    private var fellows = [Fellow]()
    var pairs = [Pairing]()
    
    init() {
        fellows = generateFellowsFromAttendance()
    }
    
    private func generateFellowsFromAttendance() -> [Fellow] {
        let fellowNames = Global.Data.fellowNames
        return fellowNames.map({a in
            Fellow(name: a)
        })
    }
        
    private func getRandomFellow() -> Fellow? {
        return fellows.randomElement()
    }
}


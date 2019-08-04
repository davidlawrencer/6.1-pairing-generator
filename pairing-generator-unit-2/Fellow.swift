//
//  Fellow.swift
//  pairing-generator-unit-2
//
//  Created by David Rifkin on 7/30/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

struct Fellow: Person {
    let name: String
    let image: String
    private let pastMatches: [String]
    
    init(name: String) {
        self.name = name
        image = name.getFormattedImageName()
        pastMatches = Global.Data.getPreviousPairs(forName: name)
    }
    
    func seeIfAlreadyPaired(potentialMatch name: String) -> Bool {
        return self.pastMatches.contains(name)
    }
}

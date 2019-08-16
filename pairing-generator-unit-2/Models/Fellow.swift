//
//  Fellow.swift
//  pairing-generator-unit-2
//
//  Created by David Rifkin on 7/30/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation
import UIKit

struct Fellow: Person {
    let name: String
    internal let image: String
    private var pastMatches: [String]
    var timesAtBoard = 0
    
    init(name: String, pastMatches: [String],timesAtBoard: Int) {
        self.name = name
        self.image = name.getFormattedImageName()
        self.pastMatches = pastMatches
        self.timesAtBoard = timesAtBoard
    }
    
    init(withNameForPlaceHolder: String) {
        name = withNameForPlaceHolder
        image = withNameForPlaceHolder.getFormattedImageName()
        pastMatches = [String]()
        timesAtBoard = 0
    }
    
    func getProfileImage() -> UIImage {
        return UIImage(named: image) ?? UIImage(named: Global.placeholderPersonName.getFormattedImageName())!
    }
    
    func seeIfAlreadyPaired(with name: String) -> Bool {
        return pastMatches.contains(name)
    }
    
    mutating func addNewPastPair(name:String) {
        pastMatches.append(name)
    }
    
    mutating func wentToBoard() {
        timesAtBoard += 1
    }
}

extension Fellow: Equatable {
    static func ==(lhs: Fellow, rhs: Fellow) -> Bool {
        return lhs.name == rhs.name
    }
}

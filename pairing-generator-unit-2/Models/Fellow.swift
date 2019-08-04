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
    private let pastMatches: [String]
    
    init(name: String) {
        self.name = name
        image = name.getFormattedImageName()
        pastMatches = Global.Data.getPreviousPairs(forName: name)
    }
    
    func getProfileImage() -> UIImage {
        return UIImage(named: image) ?? UIImage(named: Global.placeholderPersonName.getFormattedImageName())!
    }
    
    func seeIfAlreadyPaired(with name: String) -> Bool {
        return self.pastMatches.contains(name)
    }
}

extension Fellow: Equatable {
    static func ==(lhs: Fellow, rhs: Fellow) -> Bool {
        return lhs.name == rhs.name
    }
}

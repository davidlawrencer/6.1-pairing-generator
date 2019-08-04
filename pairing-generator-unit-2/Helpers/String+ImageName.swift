//
//  String.swift
//  pairing-generator-unit-2
//
//  Created by David Rifkin on 8/4/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

extension String {
    func getFormattedImageName() -> String {
        return self.lowercased().split(separator: " ").joined(separator: "-")
    }
}

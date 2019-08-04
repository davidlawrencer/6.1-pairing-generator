//
//  ClassPairing.swift
//  pairing-generator-unit-2
//
//  Created by David Rifkin on 7/30/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

struct Classroom {
    private var unassignedFellows = [Fellow]()
    var pairs = [Pairing]()
    
    init() {
        unassignedFellows = generateFellowsFromAttendance()
    }
    
    mutating func getAPair() -> Pairing? {
        guard unassignedFellows.count > 0 else {
            return nil
        }
        
        if let firstFellow = getRandomFellow(){
            //TODO: clean this up
            if unassignedFellows.count == 1 {
                let newPair = Pairing(lhs: firstFellow, rhs: Fellow(name: Global.placeholderPersonName))
                accountForNewPair(newPair)
                return newPair
            }
            while true {
                if let secondFellow = getRandomFellow(), (secondFellow != firstFellow && !firstFellow.seeIfAlreadyPaired(with:  secondFellow.name)) {
                    let newPair = Pairing(lhs: firstFellow, rhs: secondFellow)
                    accountForNewPair(newPair)
                    return newPair
                } else {
                    continue
                }
            }
        }
        return nil
    }
    
    private func generateFellowsFromAttendance() -> [Fellow] {
        let fellowNames = Global.Data.fellowNames
        return fellowNames.map({a in
            Fellow(name: a)
        })
    }
    
    private func getRandomFellow() -> Fellow? {
        return unassignedFellows.randomElement()
    }
    
    private mutating func accountForNewPair(_ pair: Pairing) {
        removePairedFellows(pair.lhs,pair.rhs)
        appendNewPair(pair)
    }
    
    private mutating func removePairedFellows(_ firstFellow: Fellow, _ secondFellow: Fellow) {
        unassignedFellows.removeAll {$0 == firstFellow || $0 == secondFellow}
    }
    
    private mutating func appendNewPair(_ fromPair: Pairing) {
        pairs.append(fromPair)
    }
}


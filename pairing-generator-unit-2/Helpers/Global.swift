//
//  Global.swift
//  pairing-generator-unit-2
//
//  Created by David Rifkin on 8/4/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

struct Global {
    static let placeholderPersonName = "placeholder"
    
    struct Data {
        static var fellowNames: [String] = ["Hildy Abreu", "Alyson Abril", "Ayoola Abudu",  "Bee Brown", "Krystal Campbell", "Ian Cervone", "Michelle Cueva", "Levi Davis", "Angela Garrovillas", "Anthony Gonzalez", "Mariel Hoepelman", "Adam Jackson", "Alex Legaspi", "Tia Lendor", "Kary Martinez", "Phoenix McKnight", "Eric Mei", "Kevin Natera", "Liana Norman", "Albert Oliveira", "Aaron Pachesa", "Neema Philippe", "Sam Roman", "Jason Ruan",  "Sunni Tang", "Jack Wong", "Eric Widjaja", "Kimball Yang", "Rad Valongo", "Malcolm Turnquest", "Jocelyn Boyd"]
    
        private static let allPreviousPairs = [
            "Hildy Abreu" : ["Kevin Natera","Ayoola Abudu"],
            "Alyson Abril" : ["Jocelyn Boyd","Sam Roman","Malcolm Turnquest"],
            "Ayoola Abudu" : ["Adam Jackson","Kary Martinez", "Hildy Abreu"],
            "Jocelyn Boyd" : ["Alyson Abril","Eric Widjaja", "Angela Garrovillas"],
            "Bee Brown" : ["Malcolm Turnquest","Jack Wong","Anthony Gonzalez"],
            "Krystal Campbell" : ["Sunni Tang", "Sam Roman"],
            "Ian Cervone" : ["Kary Martinez","Michelle Cueva","Neema Philippe"],
            "Michelle Cueva" : ["Alex Legaspi","Ian Cervone","Rad Valongo"],
            "Levi Davis" : ["Kimball Yang","Mariel Hoepelman"],
            "Angela Garrovillas" : ["Liana Norman","Alex Legaspi","Eric Widjaja","Jocelyn Boyd"],
            "Anthony Gonzalez" : ["Eric Widjaja","Eric Mei","Sunni Tang","Bee Brown"],
            "Mariel Hoepelman" : ["Tia Lendor","Eric Widjaja","Levi Davis"],
            "Adam Jackson" : ["Ayoola Abudu","Tia Lendor"],
            "Alex Legaspi" : ["Michelle Cueva","Angela Garrovillas","Phoenix McKnight"],
            "Tia Lendor" : ["Mariel Hoepelman", "Adam Jackson"],
            "Kary Martinez" : ["Ian Cervone","Ayoola Abudu","Liana Norman"],
            "Phoenix McKnight" : ["Eric Mei","Rad Valongo","Alex Legaspi"],
            "Eric Mei" : ["Phoenix McKnight","Anthony Gonzalez","Sunni Tang","Kimball Yang"],
            "Kevin Natera" : ["Neema Philippe","Hildy Abreu","Jason Ruan"],
            "Liana Norman" : ["Angela Garrovillas","Jason Ruan","Kary Martinez"],
            "Albert Oliveira" : ["Kimball Yang","Aaron Pachesa","Sunni Tang"],
            "Aaron Pachesa" : ["Jason Ruan","Albert Oliveira","Jack Wong"],
            "Neema Philippe" : ["Kevin Natera","Ian Cervone"],
            "Sam Roman" : ["Alyson Abril","Krystal Campbell"],
            "Jason Ruan" : ["Aaron Pachesa","Liana Norman","Kevin Natera"],
            "Sunni Tang" : ["Krystal Campbell","Anthony Gonzalez","Eric Mei","Albert Oliveira"],
            "Malcolm Turnquest" : ["Bee Brown","Alyson Abril"],
            "Jack Wong" : ["Bee Brown","Aaron Pachesa"],
            "Eric Widjaja" : ["Anthony Gonzalez", "Mariel Hoepelman","Jocelyn Boyd","Angela Garrovillas"],
            "Kimball Yang" : ["Albert Oliveira","Levi Davis","Eric Mei"],
            "Rad Valongo": ["Phoenix McKnight","Michelle Cueva"]
        ]
        
        static func getPreviousPairs(forName name: String) -> [String] {
            return allPreviousPairs[name] ?? [String]()
        }
    }
}

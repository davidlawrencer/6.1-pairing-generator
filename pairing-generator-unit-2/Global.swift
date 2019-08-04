//
//  Global.swift
//  pairing-generator-unit-2
//
//  Created by David Rifkin on 8/4/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

struct Global {
    static func getStudentNames() -> [String]{
        return ["Hildy Abreu", "Alyson Abril", "Ayoola Abudu",  "Bee Brown", "Krystal Campbell", "Ian Cervone", "Michelle Cueva", "Levi Davis", "Angela Garrovillas", "Anthony Gonzalez", "Mariel Hoepelman", "Adam Jackon", "Alex Legaspi", "Tia Lendor", "Kary Martinez", "Phoenix McKnight", "Eric Mei", "Kevin Natera", "Liana Norman", "Albert Oliveira", "Aaron Pachesa", "Neema Philippe", "FredlynePierre-Paul", "Sam Roman", "Jason Ruan",  "Sunni Tang", "Jack Wong", "Eric Widjaja", "Kimball Yang", "Rad Valongo", "Malcolm Turnquest", "Jocelyn Boyd"]
        //absent: , "Josh Wynter","Wally Suarez",
    }
    
    static func getPreviousPairs(forName name: String) -> [String] {
        let allPreviousPairs = [
            "Hildy Abreu" : ["Wally Suarez","Kevin Natera"],
            "Alyson Abril" : ["Jocelyn Boyd","Sam Roman"],
            "Ayoola Abudu" : ["Adam Jackson","Kary Martinez"],
            "Jocelyn Boyd" : ["Alyson Abril"],
            "Bee Brown" : ["Malcolm Turnquest","Jack Wong"],
            "Krystal Campbell" : ["Sunni Tang","Fredlyne Pierre-Paul"],
            "Ian Cervone" : ["Kary Martinez","Michelle Cueva"],
            "Michelle Cueva" : ["Alex Legaspi","Ian Cervone"],
            "Levi Davis" : ["Fredlyne Pierre-Paul","Kimball Yang"],
            "Angela Garrovillas" : ["Liana Norman","Alex Legaspi"],
            "Anthony Gonzalez" : ["Eric Widjaja","Eric Mei","Sunni Tang"],
            "Mariel Hoepelman" : ["Tia Lendor","Eric Widjaja"],
            "Adam Jackson" : ["Ayoola Abudu","Tia Lendor"],
            "Alex Legaspi" : ["Michelle Cueva","Angela Garrovillas"],
            "Tia Lendor" : ["Mariel Hoepelman"],
            "Kary Martinez" : ["Ian Cervone","Ayoola Abudu"],
            "Phoenix McKnight" : ["Eric Mei","Rad Valongo"],
            "Eric Mei" : ["Phoenix McKnight","Anthony Gonzalez","Sunni Tang"],
            "Kevin Natera" : ["Neema Philippe","Hildy Abreu"],
            "Liana Norman" : ["Angela Garrovillas","Jason Ruan"],
            "Albert Oliveira" : ["Kimball Yang","Aaron Pachesa"],
            "Aaron Pachesa" : ["Jason Ruan","Albert Oliveira"],
            "Neema Philippe" : ["Kevin Natera","Wally Suarez"],
            "Fredlyne Pierre-Paul" : ["Levi Davis","Krystal Campbell"],
            "Sam Roman" : ["Alyson Abril"],
            "Jason Ruan" : ["Aaron Pachesa","Liana Norman"],
            "Wally Suarez" : ["Hildy Abreu","Neema Philippe"],
            "Sunni Tang" : ["Krystal Campbell","Anthony Gonzalez","Eric Mei"],
            "Malcolm Turnquest" : ["Bee Brown"],
            "Jack Ruan" : ["Bee Brown"],
            "Eric Widjaja" : ["Anthony Gonzalez", "Mariel Hoepelman"],
            "Kimball Yang" : ["Albert Oliveira","Levi Davis"],
            "Rad Valongo": ["Phoenix McKnight"]
        ]
        return allPreviousPairs[name] ?? [String]()
    }
}

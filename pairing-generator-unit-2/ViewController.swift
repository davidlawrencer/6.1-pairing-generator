//
//  ViewController.swift
//  pairing-generator-unit-2
//
//  Created by David Rifkin on 7/30/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myClassroom = Classroom()
    
    @IBOutlet weak var topPairName: UILabel!
    @IBOutlet weak var bottomPairName: UILabel!
    @IBOutlet weak var bottomPairImage: UIImageView!
    @IBOutlet weak var topPairImage: UIImageView!
    
    @IBAction func gimmeNewPairButtonPressed(_ sender: UIButton) {
        if let pair = myClassroom.getAPair() {
            topPairName.text = pair.lhs.name
            topPairImage.image = pair.lhs.getProfileImage()
            bottomPairName.text = pair.rhs.name
            bottomPairImage.image = pair.rhs.getProfileImage()
        } else {
            //TODO: present alert saying no more pairs
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


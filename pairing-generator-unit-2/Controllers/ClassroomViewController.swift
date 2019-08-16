//
//  ViewController.swift
//  pairing-generator-unit-2
//
//  Created by David Rifkin on 7/30/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class ClassroomViewController: UIViewController {
    
    private var myClassroom = Classroom()
    
    @IBOutlet weak var topPairName: UILabel!
    @IBOutlet weak var bottomPairName: UILabel!
    @IBOutlet weak var bottomPairImage: UIImageView!
    @IBOutlet weak var topPairImage: UIImageView!
    
    @IBAction func gimmeNewPairButtonPressed(_ sender: UIButton) {
        if let pair = myClassroom.createAndReturnNewPair() {
            updateViewUsingPair(pair: pair)
        } else {
            presentCompletedMatchingAlert()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func updateViewUsingPair(pair: Pairing) {
        topPairName.text = pair.lhs.name
        topPairImage.image = pair.lhs.getProfileImage()
        bottomPairName.text = pair.rhs.name
        bottomPairImage.image = pair.rhs.getProfileImage()
    }
    
    private func presentCompletedMatchingAlert() {
        let alert = UIAlertController(title: "Sorry Bruv", message: "All fellows have been matched", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true)
        print(self.myClassroom.pairs)
    }
}


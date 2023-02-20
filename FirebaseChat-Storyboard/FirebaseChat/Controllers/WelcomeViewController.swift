//
//  WelcomeViewController.swift
//  FirebaseChat
//
//  Created by Bhishak Sanyal on 03/11/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        runWelcomeAnimation()
    }
    
    func runWelcomeAnimation() {
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = "FlashChat"
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.2 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
                
            }
            charIndex += 1
        }
    }


}


//
//  ConstraintsViewController.swift
//  UIKit-Animations
//
//  Created by casandra grullon on 1/31/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class ConstraintsAnimationVC: UIViewController {

    @IBOutlet weak var pinkBoxYConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
    }

    @IBAction func animateViewUP(_ sender: UIButton) {
        //negative value to move box up
        pinkBoxYConstraint.constant -= 100
        //when we change the constraints in iOS and want to show it as an animation --> self.view.layoutIfNeeded
        //
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 5.0, options: [.curveEaseIn], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    @IBAction func animateViewDOWN(_ sender: UIButton) {
        //positive value to move box down
        pinkBoxYConstraint.constant += 100
        
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 5.0, options: [.curveEaseOut], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    
}

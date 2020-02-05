//
//  PropertyAnimatorController.swift
//  UIKit-Animations
//
//  Created by casandra grullon on 2/4/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class PropertyAnimatorController: UIViewController {

    @IBOutlet weak var duckImage: UIImageView!
    
    @IBOutlet weak var slider: UISlider!
    
    //1. create an instance to UIViewPropertyAnimator
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //2. instantiate the animator property
        animator = UIViewPropertyAnimator(duration: 1.5, curve: .easeInOut, animations: {
            //2a. assign transform animation
            self.duckImage.transform = CGAffineTransform(scaleX: 3.0, y: 1)
        })
    }
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        //3. give animator value to sender value
        animator.fractionComplete = CGFloat(sender.value)
    }
    
}

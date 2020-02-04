//
//  TransitionsAnimationController.swift
//  UIKit-Animations
//
//  Created by casandra grullon on 2/4/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class TransitionsAnimationController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    //create tap gesture
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(animate(_:)))
        gesture.numberOfTapsRequired = 1
        return gesture
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //default image
        imageView.image = UIImage(named: "dog")
        view.backgroundColor = #colorLiteral(red: 0.7739111781, green: 1, blue: 0.8726517558, alpha: 1)
        
        //enable user interaction on image
        imageView.isUserInteractionEnabled = true
        //add gesture to image view
        imageView.addGestureRecognizer(tapGesture)
    }
    
    @objc
    private func animate(_ gesture: UITapGestureRecognizer) {
        let duration: Double = 1.5
        let curveOption: UIView.AnimationOptions = .curveEaseInOut
        
        if imageView.image == UIImage(named: "dog") {
            UIView.transition(with: imageView, duration: duration, options: [.transitionFlipFromRight, curveOption], animations: {
                self.imageView.image = UIImage(named: "cat")
                self.view.backgroundColor = #colorLiteral(red: 1, green: 0.5062019825, blue: 0.7077280879, alpha: 1)
            }, completion: nil)
        } else {
            UIView.transition(with: imageView, duration: duration, options: [.transitionFlipFromLeft, curveOption], animations: {
                self.imageView.image = UIImage(named: "dog")
                self.view.backgroundColor = #colorLiteral(red: 0.7739111781, green: 1, blue: 0.8726517558, alpha: 1)
            }, completion: nil)
        }
    }
    
    
    

}

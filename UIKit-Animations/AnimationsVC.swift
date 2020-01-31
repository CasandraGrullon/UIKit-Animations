//
//  AnimationsVC.swift
//  UIKit-Animations
//
//  Created by casandra grullon on 1/31/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class AnimationsVC: UIViewController {

    private let animationView = AnimationsView()
    
    override func loadView() {
        view = animationView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        scaleImageAddNewImageAnimation()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //scaleAnimation()
        //pulsatingAnimation()
        scaleImageAddNewImageAnimation()
    }
    
    //MARK: Properties we can animate:
    /*
     - alpha
     - corner radius
     - position
     - center
     - transition
     - color
     - shadow
     - opacity
     - transform: scale, rotate, translate(move object)
     */
    
    //MARK: Animation Sample 1 --> scale animation (transforming an image size)
    private func scaleAnimation() {
        UIView.animate(withDuration: 2.0) { // 0.3 == 1/3 of a second
            // any transform value of 1.0 represents the view's inital size
            self.animationView.pursuitLogo.transform = CGAffineTransform(scaleX: 30.0, y: 30.0)
            //MARK: Animation Sample 2 --> fade animation
            self.animationView.pursuitLogo.alpha = 0
        }
    }
    //MARK: Animation sample 3 -->
    private func scaleImageAddNewImageAnimation() {
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [], animations: {
            self.animationView.pursuitLogo.transform = CGAffineTransform(scaleX: 30.0, y: 30.0)
            self.animationView.pursuitLogo.alpha = 0
        }) { (done) in
            // called when initial animation is finished
            UIView.animate(withDuration: 0.5) {
                self.animationView.swiftLogo.isHidden = false
                self.animationView.swiftLogo.layer.cornerRadius = self.animationView.swiftLogo.bounds.size.width / 2
            }
        }
    }
    
    //MARK: Animation Sample 4 --> pulsating image (scaling small to large back repeatedly)
    private func pulsatingAnimation() {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            // animation block
            self.animationView.pursuitLogo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (done) in
            // code to be executed after animation is complete
            // options: 1. reset views values   2. create a next animation
            UIView.animate(withDuration: 0.3) {
                self.animationView.pursuitLogo.transform = CGAffineTransform.identity // restores back to original state
            }
            
        }
    }

}

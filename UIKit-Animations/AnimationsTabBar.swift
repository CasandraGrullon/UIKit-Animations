//
//  AnimationsTabBar.swift
//  UIKit-Animations
//
//  Created by casandra grullon on 1/31/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class AnimationsTabBar: UITabBarController {
    
    private lazy var animationsVC: AnimationsVC = {
        let viewcontroller = AnimationsVC()
        viewcontroller.tabBarItem = UITabBarItem(title: "Animations", image: UIImage(systemName: "1.circle"), tag: 0)
        return viewcontroller
    }()
    
    private lazy var constraintsVC: ConstraintsAnimationVC = {
        //1. instance from storyboard
        let constraintsAnimationStoryboard = UIStoryboard(name: "ConstraintsAnimation", bundle: nil)
        
        //2. instantiate view controller from storyboard instance
        guard let viewcontroller = constraintsAnimationStoryboard.instantiateViewController(identifier: "ConstraintsAnimationVC") as? ConstraintsAnimationVC else {
            fatalError("could not load ConstraintsAnimationVC")
        }
        viewcontroller.tabBarItem = UITabBarItem(title: "Constraints Animation", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewcontroller
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [animationsVC, constraintsVC]
    }
    
}

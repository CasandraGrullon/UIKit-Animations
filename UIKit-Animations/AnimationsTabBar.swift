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
        viewcontroller.tabBarItem = UITabBarItem(title: "Constraints", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewcontroller
    }()
    
    private lazy var transitionsVC: TransitionsAnimationController = {
        let transitionsStoryboard = UIStoryboard(name: "TransitionsAnimations", bundle: nil)
        
        guard let viewcontroller = transitionsStoryboard.instantiateViewController(identifier: "TransitionsAnimationController") as? TransitionsAnimationController else {
            fatalError("could not load TransitionsAnimations")
        }
        viewcontroller.tabBarItem = UITabBarItem(title: "Transitions", image: UIImage(systemName: "3.circle"), tag: 2)
        return viewcontroller
    }()
    
    private var propertyAnimatorVC: PropertyAnimatorController = {
        let propertyStoryboard = UIStoryboard(name: "PropertyAnimator", bundle: nil)
        
        guard let viewcontroller = propertyStoryboard.instantiateViewController(identifier: "PropertyAnimatorController") as? PropertyAnimatorController else {
            fatalError("could not load PropertyAnimatorController")
        }
        viewcontroller.tabBarItem = UITabBarItem(title: "Property", image: UIImage(systemName: "4.circle"), tag: 3)
        return viewcontroller
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [animationsVC, constraintsVC, transitionsVC, propertyAnimatorVC]
    }
    
}

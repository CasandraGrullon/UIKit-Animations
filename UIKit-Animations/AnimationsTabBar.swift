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
    
    private lazy var constraintsVC: ConstraintsViewController = {
        let viewcontroller = ConstraintsViewController()
        viewcontroller.tabBarItem = UITabBarItem(title: "Constraints", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewcontroller
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [animationsVC, constraintsVC]
    }
    
}

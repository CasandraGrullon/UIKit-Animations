//
//  AnimationsView.swift
//  UIKit-Animations
//
//  Created by casandra grullon on 1/31/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class AnimationsView: UIView {
    
    public lazy var pursuitLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Image")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    public lazy var swiftLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "swift-logo")
        imageView.isHidden = true
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    private func commonInit() {
        pursuitLogoConstraints()
        swiftLogoConstraints()
    }
    
    private func pursuitLogoConstraints() {
        addSubview(pursuitLogo)
        pursuitLogo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pursuitLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            pursuitLogo.centerYAnchor.constraint(equalTo: centerYAnchor),
            pursuitLogo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            pursuitLogo.heightAnchor.constraint(equalTo: pursuitLogo.widthAnchor)
        ])
    }
    private func swiftLogoConstraints() {
        addSubview(swiftLogo)
        swiftLogo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            swiftLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            swiftLogo.centerYAnchor.constraint(equalTo: centerYAnchor),
            swiftLogo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            swiftLogo.heightAnchor.constraint(equalTo: swiftLogo.widthAnchor)
        ])
    }
}

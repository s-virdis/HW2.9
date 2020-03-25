//
//  MainViewController.swift
//  HW2.9
//
//  Created by lastbyte on 25.03.2020.
//  Copyright © 2020 lastbyte. All rights reserved.
//

import Spring

class MainViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var nameAnimationLabal: UILabel!
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var startAnimationButton: UIButton!
    
    // MARK: - Private Properties
    private let animations = Spring.AnimationPreset.allCases
    private var currentAnimation: Spring.AnimationPreset!

    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
       
        currentAnimation = animations.first
        startAnimationAction()
    }
    
    // MARK: - IBActions
    @IBAction func startAnimationAction() {
        startAnimation(currentAnimation.rawValue)
        nextAnimation()
    }
    
    // MARK: - Private Methods
    private func startAnimation(_ animation: String) {

        let force = CGFloat.random(in: 0..<2)
        let delay = CGFloat.random(in: 0..<2)
        let duration = CGFloat.random(in: 0..<2)

        animationView.force =  force
        animationView.delay =  delay
        animationView.duration =  duration
        animationView.animation = animation

        nameAnimationLabal.text = "Type animation \(animation)\n force: \(String(format: "%.2f",animationView.force))\n delay: \(String(format: "%.2f",animationView.delay))\n duration: \(String(format: "%.2f",animationView.duration))"
       // nameAnimationLabal.text = "wew;k;wjke;kwe"
        animationView.animate()
    }
    
    private func nextAnimation() {
        
        currentAnimation = animations.nextElement(from: currentAnimation)
        startAnimationButton.setTitle(currentAnimation.rawValue, for: .normal)
    }

}

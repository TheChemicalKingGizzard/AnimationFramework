//
//  ViewController.swift
//  AnimationFramework
//
//  Created by Даниил Петров on 06.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    var isFirstAnimation = true
    var currentAnimation = Animation()
    
    @IBOutlet var mainTextView: SpringTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTextView.text =
                            """
                            preset: \(mainTextView.animation)
                            curve: \(mainTextView.curve)
                            force: \(mainTextView.force)
                            duration: \(mainTextView.duration)
                            delay: \(mainTextView.delay)
                            """
    }
    
    @IBAction func startAnimation(_ sender: UIButton) {
        
        let nextAnimation = Animation()
        
        mainTextView.animation = currentAnimation.preset
        mainTextView.curve = currentAnimation.curve
        mainTextView.force = currentAnimation.force
        mainTextView.duration = currentAnimation.duration
        mainTextView.delay = currentAnimation.delay
        sender.setTitle("Run \(nextAnimation.preset)", for: .normal)
        
        mainTextView.text =
                            """
                            preset: \(mainTextView.animation)
                            curve: \(mainTextView.curve)
                            force: \(mainTextView.force)
                            duration: \(mainTextView.duration)
                            delay: \(mainTextView.delay)
                            """
        
        isFirstAnimation.toggle()
        mainTextView.animate()
        currentAnimation = nextAnimation
        sender.setTitle("Run \(nextAnimation.preset)", for: .normal)
    }
}

 

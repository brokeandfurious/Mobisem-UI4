//
//  SplashViewController.swift
//  Mobisem-UI4
//
//  Created by mkolcalar on 20.04.2018.
//  Copyright © 2018 mkolcalar. All rights reserved.
//

import UIKit
import Lottie

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        playSplashAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playSplashAnimation() {
        print("Animation playing.")
        
        let animationView = LOTAnimationView.init(name: "basketdancepng2")
        animationView.contentMode = .scaleAspectFill
        animationView.loopAnimation = false
        
        self.view.addSubview(animationView)
        
        animationView.play { (completed) in
            let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController")
            homeViewController?.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(homeViewController!, animated: true, completion: nil)
        }
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        animationView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        animationView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        animationView.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }

}

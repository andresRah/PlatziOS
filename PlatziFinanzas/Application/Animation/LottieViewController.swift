//
//  LottieViewController.swift
//  PlatziFinanzas
//
//  Created by Andres Leonardo Arevalo on 1/6/19.
//  Copyright © 2019 Andres Leonardo Arevalo. All rights reserved.
//

import UIKit
import Lottie

class LottieViewController: UIViewController {

    @IBOutlet weak var aniamtionView: LOTAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aniamtionView.setAnimation(named: "day_of_the_dead_skull")
        aniamtionView.loopAnimation = true
        aniamtionView.play()
    }
}

//
//  OnBoardingContainerViewController.swift
//  PlatziFinanzas
//
//  Created by Andres Leonardo Arevalo on 1/5/19.
//  Copyright © 2019 Andres Leonardo Arevalo. All rights reserved.
//

import UIKit

class OnBoardingContainerViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "openOnBoarding", let destination = segue.destination as? OnBoardingViewController else{
            return
        }
        
        destination.pageControl = pageControl
    }
}

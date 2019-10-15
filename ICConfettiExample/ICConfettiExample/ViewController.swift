//
//  ViewController.swift
//  ICConfettiExample
//
//  Created by Ishan Chhabra on 16/10/19.
//  Copyright © 2019 Ishan Chhabra. All rights reserved.
//

import UIKit
import ICConfetti

class ViewController: UIViewController {
    
    var icConfetti: ICConfetti!

    override func viewDidLoad() {
        super.viewDidLoad()
        icConfetti = ICConfetti()
        icConfetti.rain(in: view)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        icConfetti.stopRaining()
    }

}


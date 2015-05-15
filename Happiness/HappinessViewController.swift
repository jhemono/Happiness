//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Julien Hémono on 15/05/15.
//  Copyright (c) 2015 Julien Hémono. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController {

    var happiness: Int = 50 { // 0 = very sad, 100 = ecstatic
        didSet {
            happiness = min(100, max(0, happiness))
            println("happiness = \(happiness)")
            updateUI()
        }
    }
    
    private func updateUI() {
        
    }

}

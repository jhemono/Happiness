//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Julien Hémono on 15/05/15.
//  Copyright (c) 2015 Julien Hémono. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource {

    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.dataSource = self
        }
    }
    
    var happiness: Int = 100 { // 0 = very sad, 100 = ecstatic
        didSet {
            happiness = min(100, max(0, happiness))
            println("happiness = \(happiness)")
            updateUI()
        }
    }
    
    private func updateUI() {
        faceView.setNeedsDisplay()
    }
    
    func smilinessForFaceView(sender: FaceView) -> Double {
        return Double(happiness - 50) / 50
    }

}

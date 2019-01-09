//
//  ViewController.swift
//  Lesson1Clock
//
//  Created by David Svensson on 2019-01-09.
//  Copyright © 2019 David Svensson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var timeLabel: UILabel!
    
    let clock = Clock()
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // print("Nu körs appen")
       updateTimeLabel()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.updateTimeLabel), userInfo: nil, repeats: true)
        
    }

    @objc func updateTimeLabel() {
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        timeLabel.text = formatter.string(from: clock.currentTime)
    }
    
    deinit {

//    if timer != nil {
//        timer!.invalidate()
//    }
      
        if let timer = self.timer {
            timer.invalidate()
        }
        
        
    }

}


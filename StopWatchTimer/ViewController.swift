//
//  ViewController.swift
//  StopWatchTimer
//
//  Created by Mehmet Ragıp Altuncu on 15/01/16.
//  Copyright © 2016 MehmetAltuncu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = NSTimer()
    var timePassed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func timerStart() {
        timePassed++
        timeLabel.text = String(timePassed)
        
    }

    @IBAction func playButtonPressed(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("timerStart"), userInfo: nil, repeats: true)
        
        
    }
  
    @IBAction func pauseButtonPressed(sender: UIBarButtonItem) {
        timer.invalidate()
    }

    @IBAction func resetButtonPressed(sender: AnyObject) {
        timer.invalidate()
        timePassed = 0
        timeLabel.text = String(timePassed)
        
    }

}


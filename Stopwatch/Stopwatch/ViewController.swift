//
//  ViewController.swift
//  Stopwatch
//
//  Created by Apple on 10/26/15.
//  Copyright © 2015 Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    
    var time = 0

    @IBOutlet var timerLabel: UILabel!
    
    func increaseTimer() {
        time++
        timerLabel.text = "\(time)"
    }
    @IBAction func play(sender: AnyObject) {
            timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func reset(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timerLabel.text = "0"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


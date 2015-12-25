//
//  ViewController.swift
//  longPress
//
//  Created by Apple on 11/20/15.
//  Copyright © 2015 Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var gesture: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: "longPressed:")
        gesture.minimumPressDuration = 1.0;
        self.view.addGestureRecognizer(gesture);
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func longPressed(longPress: UIGestureRecognizer)
    {
        if(longPress.state == UIGestureRecognizerState.Ended)
        {
            print("ended")
        }
        else if(longPress.state == UIGestureRecognizerState.Began)
        {
            print("begin")
        }
    }

}


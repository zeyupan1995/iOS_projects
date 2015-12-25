//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Apple on 10/26/15.
//  Copyright © 2015 Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //NSUserDefaults.standardUserDefaults().setObject("Rob", forKey: "name")
        var userName = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String
        print(userName)
        var arr = [1,2,3,4]
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        let returnedArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        
        print(returnedArray)
        for x in returnedArray{
            print(x)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


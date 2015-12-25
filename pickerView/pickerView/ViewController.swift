//
//  ViewController.swift
//  pickerView
//
//  Created by Apple on 11/30/15.
//  Copyright © 2015 Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet var Picker1: UIPickerView!
    
    @IBOutlet var Label: UILabel!
    var Array = ["Hello","World","This is Jared"]
    
    var PlacementAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Picker1.delegate = self
        Picker1.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    @IBAction func submit(sender: AnyObject) {
        if PlacementAnswer == 0
        {
            Label.text = "hello"
        }
        else if PlacementAnswer == 1
        {
            Label.text = "world"
        }
        else
        {
            Label.text = "This is jared"
        }
    }


    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        PlacementAnswer = row
    }

}


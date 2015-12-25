//
//  FirstViewController.swift
//  To Do List
//
//  Created by Apple on 10/26/15.
//  Copyright © 2015 Pan. All rights reserved.
//

import UIKit

var toDoList = [String]()

class FirstViewController: UIViewController,UITableViewDelegate {

    @IBOutlet var toDoListTable: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if NSUserDefaults.standardUserDefaults().objectForKey("toDoList") != nil {
            toDoList = NSUserDefaults.standardUserDefaults().objectForKey("toDoList") as! [String]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return toDoList.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel?.text = toDoList[indexPath.row]
        return cell
        
    }
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.Delete{
            toDoList.removeAtIndex(indexPath.row)
            
        }
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        toDoListTable.reloadData()
    }
    override func viewDidAppear(animated: Bool) {
        toDoListTable.reloadData()
    }

}


//
//  ViewController.swift
//  Core Data Demo
//
//  Created by Apple on 11/13/15.
//  Copyright © 2015 Pan. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let context: NSManagedObjectContext = appDel.managedObjectContext
        
        var newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context)
        
        newUser.setValue("Rob", forKey: "username")
        
        newUser.setValue("pass123", forKey: "password")
        
        do
        {
            try context.save()
        }
        catch{
            print("There's a problem")
        }
        
        let request = NSFetchRequest(entityName: "Users")
        
        request.returnsObjectsAsFaults = false
        do
        {
            let results = try context.executeFetchRequest(request)
            
            if results.count > 0
            {
                for result in results as! [NSManagedObject]
                {
                    print(result.valueForKey("username")!)
                    print(result.valueForKey("password")!)
                }
            }
        }
        catch{
            print("Fetch Failed")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


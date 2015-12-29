//
//  ViewController.swift
//  Downloading An Image
//
//  Created by Apple on 12/25/15.
//  Copyright © 2015 Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var image: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/6/6a/Johann_Sebastian_Bach.jpg")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) -> Void in
            
            if error != nil{
                print(error)
            }
            else{
                
                var documentsDirectory: String?
                
                var paths: [AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentationDirectory, NSSearchPathDomainMask.UserDomainMask, true)
                
                if paths.count > 0 {
                    
                    
                    documentsDirectory = paths[0] as? String
                    
                    let savePath = documentsDirectory! + "/bach.jpg"
                    

                    NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
                    
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        
                        self.image.image = UIImage(named: savePath)
                    
                    })
                    
                }
                
            }
        }
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

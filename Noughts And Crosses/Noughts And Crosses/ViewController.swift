//
//  ViewController.swift
//  Noughts And Crosses
//
//  Created by Apple on 11/5/15.
//  Copyright © 2015 Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    
    var gameActive = true
    
    @IBOutlet var gameOverLabel: UILabel!
    var activePlayer = 1// 1 = noughts ,2 = crosses
    
    var gameState = [0,0,0,0,0,0,0,0,0]
    
    let winningCombinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        if gameState[sender.tag] == 0 && gameActive == true
        {
            gameState[sender.tag] = activePlayer
        if activePlayer == 1
        {
            sender.setImage(UIImage(named: "nought.png"), forState: .Normal)
            activePlayer = 2
            
        }
        else
        {
            sender.setImage(UIImage(named: "cross.png"), forState: .Normal)
            activePlayer = 1
        }
            for combination in winningCombinations
            {
                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]
                {
                    gameActive = false
                    
                    
                    if  gameState[combination[0]] == 1
                    {
                        print("Nought has won!")
                        gameOverLabel.text = "Nought has won!"
                    }
                    else
                    {
                        print("Crosses has won")
                        gameOverLabel.text = "Crosses has won!"
                    }
                    gameOverLabel.hidden = false;
                    UIView.animateWithDuration(0.5, animations: { () -> Void in
                        self.gameOverLabel.center = CGPointMake(self.gameOverLabel.center.x + 500, self.gameOverLabel.center.y)
                    })
                }
                
            }
            
            
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        gameOverLabel.hidden = true
        
        gameOverLabel.center = CGPointMake(gameOverLabel.center.x - 500, gameOverLabel.center.y)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


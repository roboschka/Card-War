//
//  ViewController.swift
//  Lesson4CWC
//
//  Created by Maria Jeffina on 01/08/19.
//  Copyright © 2019 Maria Jeffina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftCard: UIImageView!
    
    @IBOutlet weak var rightCard: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var compScore: UILabel!
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


    @IBAction func dealTapped(_ sender: Any) {
        //code will be executed when the button is tapped.
        let leftCardRand = Int.random(in: 2...14)
        //print(leftCardRand)
        
        let rightCardRand = Int.random(in: 2...14)
        //print(rightCardRand)
        //print("Deal tapped");
        
        
        
        leftCard.image=UIImage(named: "card\(leftCardRand)")
        rightCard.image=UIImage(named: "card\(rightCardRand)")
        
        
        
        if leftCardRand < rightCardRand {
            //Right side wins
            rightScore+=1
            compScore.text = String(rightScore)
        }
        
        else if leftCardRand > rightCardRand {
            //left side wins
            leftScore+=1
            playerScore.text = String(leftScore)
        }
        else {
            //draw
            //rightScore+=1
            //leftScore+=1
        }
    }
    
}


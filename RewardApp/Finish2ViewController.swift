//
//  Finish2ViewController.swift
//  RewardApp
//
//  Created by Kyoko Otsuka on 2017/02/21.
//  Copyright © 2017年 Kyoko Otsuka. All rights reserved.
//

import UIKit

class Finish2ViewController: UIViewController {
    
    @IBAction func Finish2(_ sender: UIButton) {
         exit(0)
    }
    
    var StarShow : Int = 0
    
    
    @IBOutlet weak var titleView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(StarShow)
        if StarShow != 0 {
            titleView.text = String("Get Free Customize")
        } else {
            titleView.text = String("Sorry, Out of Stars!")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

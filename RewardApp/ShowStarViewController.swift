//
//  ShowStarViewController.swift
//  RewardApp
//
//  Created by Kyoko Otsuka on 2017/02/19.
//  Copyright © 2017年 Kyoko Otsuka. All rights reserved.
//

import UIKit

class ShowStarViewController: UIViewController {
    
    var starInt:Int = 0
    var gettedStar: Int = 0
    
    @IBOutlet weak var Star: UILabel!
    
    @IBAction func Save(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        defaults.set(gettedStar, forKey: "gettedStarOld")
    }
    
    
    
    @IBAction func Use(_ sender: UIButton) {
        gettedStar = 0
        let defaults = UserDefaults.standard
        defaults.set(gettedStar, forKey: "gettedStarOld")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let loadedStar = defaults.object(forKey: "gettedStarOld")
        if (loadedStar as? Int != nil) {
            gettedStar = loadedStar as! Int
        }
        
        if starInt > 3300 {
            gettedStar += 1
        } else if (starInt < 3300 && starInt > 3000){
            gettedStar += 2
        } else if (starInt < 3000 && starInt > 2500){
            gettedStar += 3
        } else if (starInt < 2500 && starInt > 1800){
            gettedStar += 4
        } else {
            gettedStar += 5
        }
        Star.text = String(gettedStar)
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

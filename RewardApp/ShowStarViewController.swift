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
        let alert: UIAlertController = UIAlertController(title: "ポイントを次回以降お使いですか？", message: "YESを押すと、ポイントを貯めることができます！", preferredStyle: UIAlertControllerStyle.alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "YES", style: UIAlertActionStyle.default, handler: {action in self.OK()})
        
        let cancelAction: UIAlertAction = UIAlertAction (title: "NO", style: UIAlertActionStyle.cancel, handler: {
            (action: UIAlertAction!) -> Void in
        })
        
        alert.addAction(cancelAction)
        alert.addAction(defaultAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func Use(_ sender: UIButton) {
        let alert: UIAlertController = UIAlertController(title: "ポイントを使いますか？", message: "YESを押すと、ポイントを使うことができます！", preferredStyle: UIAlertControllerStyle.alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "YES", style: UIAlertActionStyle.default, handler: {action in self.USEOK()})
        
        let cancelAction: UIAlertAction = UIAlertAction (title: "NO", style: UIAlertActionStyle.cancel, handler: {
            (action: UIAlertAction!) -> Void in
        })
        
        alert.addAction(cancelAction)
        alert.addAction(defaultAction)
        
        present(alert, animated: true, completion: nil)

    }
    
    @IBOutlet weak var Choose: UIButton!
    

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
    
    func OK() {
        self.performSegue(withIdentifier: "OK", sender: nil)
        let defaults = UserDefaults.standard
        defaults.set(gettedStar, forKey: "gettedStarOld")
    }
    
    func USEOK() {
        self.performSegue(withIdentifier: "USEOK", sender: nil)
        gettedStar -= 1
        let defaults = UserDefaults.standard
        defaults.set(gettedStar, forKey: "gettedStarOld")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "USEOK" {
            
        var FViewController = segue.destination as! Finish2ViewController
            FViewController.StarShow = gettedStar

        }
    }

}

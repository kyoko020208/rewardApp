//
//  TimerViewController.swift
//  RewardApp
//
//  Created by Kyoko Otsuka on 2017/02/19.
//  Copyright © 2017年 Kyoko Otsuka. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView! = nil
    
    var targetURL = "https://starbucks.amebaownd.com/"
    
    @IBAction func endTimer(_ sender: UIButton) {
        let alert: UIAlertController = UIAlertController(title: "お席は見つかりましたか？", message: "Yesを押すと、Starがもらえます！", preferredStyle: UIAlertControllerStyle.alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "Yes", style: UIAlertActionStyle.default, handler: {action in self.test()})
        
        let cancelAction: UIAlertAction = UIAlertAction (title: "NO", style: UIAlertActionStyle.cancel, handler: {
            (action: UIAlertAction!) -> Void in
        })
        
        alert.addAction(cancelAction)
        alert.addAction(defaultAction)
        
        present(alert, animated: true, completion: nil)
        
        timerStop()
        
    }
    var timeCount = 3600
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTimer = Timer.scheduledTimer(timeInterval: 1.0,  target: self, selector: #selector(self.timerUpdate), userInfo: nil, repeats: true)
        myTimer.fire()
        
        
        loadAddressURL()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func timerUpdate() {
        timeCount -= 1
        if timeCount < 1 {
            timerStop()
        }
    }
    
    func timerStop() {
        myTimer.invalidate()
    }
    
    func loadAddressURL() {
        let requestURL = URL(string: targetURL)
        let req = URLRequest(url: requestURL!)
        webView.loadRequest(req)
    }
    
    func test() {
        self.performSegue(withIdentifier: "Stars", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Stars" {
            var resultViewController = segue.destination as! ShowStarViewController
            
            resultViewController.starInt = timeCount
        }
    }
    
}

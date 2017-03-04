//
//  ThirdViewController.swift
//  StarbucksApp2
//
//  Created by Kyoko Otsuka on 2016/11/27.
//  Copyright © 2016年 Kyoko Otsuka. All rights reserved.
//

import UIKit

class MainTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var MyTableView: UITableView!
    
    let Drinkimages = ["130366.png", "117472.png", "121904.png", "122722.png"]
    
    let DrinkimageTitles = ["コーヒーベース", "エスプレッソベース", "フラペチーノ", "その他"]
    
    let titles = ["ビバレッジメニュー"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titles[section]
    }
    
    //Cellが押された時の画面遷移
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "CoffeeDetail" {
                var CoffeeViewController = segue.destination as! CoffeeTableViewCell
                
                if indexPath.section == 0 && indexPath.row == 0 {
                    CoffeeViewController.i = [0]
                } else if indexPath.section == 0 && indexPath.row == 1 {
                    CoffeeViewController.i = [1]
                } else if indexPath.section == 0 && indexPath.row == 2 {
                    CoffeeViewController.i = [2]
                } else if indexPath.section == 0 && indexPath.row == 3 {
                    CoffeeViewController.i = [3]
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DrinkimageTitles.count
    }
    
    //cellデータ
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.tableFooterView = UIView()
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! CustomCell
        if indexPath.section == 0 {
            cell.setCell(imageName: Drinkimages[indexPath.row], titleText: DrinkimageTitles[indexPath.row])
        }
        
        return cell
    }
    
}

//
//  EspressoTableViewController.swift
//  StarbucksRewardApp
//
//  Created by Kyoko Otsuka on 2017/02/17.
//  Copyright © 2017年 Kyoko Otsuka. All rights reserved.
//

import UIKit

class EspressoTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var NO: UITableView!
    
    var j: [Int] = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26]
    
    let Drinkimages = ["130366.png", "117472.png", "121904.png", "117472.png","117472.png", "117472.png", "117472.png", "117472.png", "117472.png", "117472.png" ]
    
    
    let DrinkimageTitles = ["スターバックスラテ", "ソイラテ", "カプチーノ", "カフェモカ","ホワイトモカ","キャラメルマキアート","カフェアメリカーノ","エスプレッソ","エスプレッソココンパナ","エスプレッソマキアート"]
    
    let titles = ["エスプレッソベースのビバレッジ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titles[section]
    }
    
    //Cellが押された時の画面遷移
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 && indexPath.row == 0 {
            performSegue(withIdentifier: "Latte", sender: nil)
        } else if indexPath.section == 0 && indexPath.row == 1 {
            performSegue(withIdentifier: "SoyLatte", sender: nil)
        } else if indexPath.section == 0 && indexPath.row == 2 {
            performSegue(withIdentifier: "Captino", sender: nil)
        }else if indexPath.section == 0 && indexPath.row == 3 {
            performSegue(withIdentifier: "Moca", sender: nil)
        }else if indexPath.section == 0 && indexPath.row == 4 {
            performSegue(withIdentifier: "WhiteMoca", sender: nil)
        }else if indexPath.section == 0 && indexPath.row == 5 {
            performSegue(withIdentifier: "CaramelM", sender: nil)
        }else if indexPath.section == 0 && indexPath.row == 6 {
            performSegue(withIdentifier: "Americano", sender: nil)
        }else if indexPath.section == 0 && indexPath.row == 7 {
            performSegue(withIdentifier: "Espresso", sender: nil)
        }else if indexPath.section == 0 && indexPath.row == 8 {
            performSegue(withIdentifier: "Compana", sender: nil)
        }else if indexPath.section == 0 && indexPath.row == 9 {
            performSegue(withIdentifier: "EspressoM", sender: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DrinkimageTitles.count
    }
    
    //cellデータ
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.tableFooterView = UIView()
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCellEspresso", for: indexPath) as! CustomCell
        if indexPath.section == 0 {
            cell.setCell3(imageName3: Drinkimages[indexPath.row], titleText3: DrinkimageTitles[indexPath.row])
        }
        return cell
    }
    
}

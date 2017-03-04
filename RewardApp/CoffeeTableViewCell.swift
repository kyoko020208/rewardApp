//
//  ThirdViewController.swift
//  StarbucksApp2
//
//  Created by Kyoko Otsuka on 2016/11/27.
//  Copyright © 2016年 Kyoko Otsuka. All rights reserved.
//

import UIKit

class CoffeeTableViewCell: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var WHY: UITableView!
    
    var i:[Int] = [0, 1, 2, 3]
    
    var l:Int?
    
    let Drinkimages = ["130366.png", "117472.png", "121904.png"]
    
    let DrinkimageTitles = ["ドリップコーヒー", "コーヒープレス", "カフェミスト"]
    
    let Drinkimages1 = ["130366.png", "117472.png", "121904.png", "117472.png","117472.png", "117472.png", "117472.png", "117472.png", "117472.png", "117472.png" ]
    
    
    let DrinkimageTitles1 = ["スターバックスラテ", "ソイラテ", "カプチーノ", "カフェモカ","ホワイトモカ","キャラメルマキアート","カフェアメリカーノ","エスプレッソ","エスプレッソココンパナ","エスプレッソマキアート"]
    
    let Drinkimages2 = ["130366.png", "117472.png", "121904.png", "117472.png", "117472.png", "117472.png", "117472.png"]
    
    
    let DrinkimageTitles2 = ["マンゴーパッションフラペチーノ", "コーヒーフラペチーノ", "キャラメルフラペチーノ", "ダークモカチップフラペチーノ","ダークモカチップクリームフラペチーノ","抹茶クリームフラペチーノ","バニラクリームフラペチーノ"]
    
    let Drinkimages3 = ["130366.png", "117472.png", "121904.png", "117472.png", "117472.png", "117472.png", "117472.png"]
    
    
    let DrinkimageTitles3 = ["ココア","キャラメルスチーマー","抹茶ティーラテ","チャイティーラテ","ティーラテ","ゆずシトラスティー", "ディー"]
    
    let titles = ["コーヒーベースのビバレッジ", "エスプレッソベースのビバレッジ", "フラペチーノ", "その他のビバレッジ"]
    
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
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) {
        
        if i == [0] {
            title = titles[0]
        } else if i == [1] {
            title = titles[1]
        } else if i == [2] {
            title = titles[2]
        } else if i == [3] {
            title = titles[3]
        }
        
    }
    
    //Cellが押された時の画面遷移
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "ShowDrinkDetail" {
                var DrinkDetailViewController = segue.destination as! EspressoTableViewController
                
                if i == [0] {
                    if indexPath.row == 0 {
                        DrinkDetailViewController.j = [0]
                    } else if indexPath.row == 1 {
                        DrinkDetailViewController.j = [1]
                    } else if indexPath.row == 2 {
                        DrinkDetailViewController.j = [2]
                    }
                } else if i == [1] {
                    if indexPath.row == 0 {
                        DrinkDetailViewController.j = [3]
                    } else if indexPath.row == 1 {
                        DrinkDetailViewController.j = [4]
                    } else if indexPath.row == 2 {
                        DrinkDetailViewController.j = [5]
                    } else if indexPath.row == 3 {
                        DrinkDetailViewController.j = [6]
                    } else if indexPath.row == 4 {
                        DrinkDetailViewController.j = [7]
                    } else if indexPath.row == 5 {
                        DrinkDetailViewController.j = [8]
                    } else if indexPath.row == 6 {
                        DrinkDetailViewController.j = [9]
                    } else if indexPath.row == 7 {
                        DrinkDetailViewController.j = [10]
                    } else if indexPath.row == 8 {
                        DrinkDetailViewController.j = [11]
                    } else if indexPath.row == 9 {
                        DrinkDetailViewController.j = [12]
                    }
                } else if i == [2] {
                    if indexPath.row == 0 {
                        DrinkDetailViewController.j = [13]
                    } else if indexPath.row == 1 {
                        DrinkDetailViewController.j = [14]
                    } else if indexPath.row == 2 {
                        DrinkDetailViewController.j = [15]
                    } else if indexPath.row == 3 {
                        DrinkDetailViewController.j = [16]
                    } else if indexPath.row == 4 {
                        DrinkDetailViewController.j = [17]
                    } else if indexPath.row == 5 {
                        DrinkDetailViewController.j = [18]
                    } else if indexPath.row == 6 {
                        DrinkDetailViewController.j = [19]
                    }
                } else if i == [3] {
                    if indexPath.row == 0 {
                        DrinkDetailViewController.j = [20]
                    } else if indexPath.row == 1 {
                        DrinkDetailViewController.j = [21]
                    } else if indexPath.row == 2 {
                        DrinkDetailViewController.j = [22]
                    } else if indexPath.row == 3 {
                        DrinkDetailViewController.j = [23]
                    } else if indexPath.row == 4 {
                        DrinkDetailViewController.j = [24]
                    } else if indexPath.row == 5 {
                        DrinkDetailViewController.j = [25]
                    } else if indexPath.row == 6 {
                        DrinkDetailViewController.j = [26]
                    }
                }
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if i == [0] {
            l = Drinkimages.count
        } else if i == [1] {
            l = Drinkimages1.count
        } else if i == [2] {
            l = Drinkimages2.count
        } else if i == [3] {
            l = Drinkimages3.count
        }
        return l!
    }
    
    
    //cellデータ
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.tableFooterView = UIView()
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCellCoffee", for: indexPath) as! CustomCell
        if i == [0] && indexPath.section == 0 {
            cell.setCell2(imageName2: Drinkimages[indexPath.row], titleText2: DrinkimageTitles[indexPath.row])
        } else if i == [1] && indexPath.section == 0 {
            cell.setCell2(imageName2: Drinkimages1[indexPath.row], titleText2: DrinkimageTitles1[indexPath.row])
        } else if i == [2] && indexPath.section == 0 {
            cell.setCell2(imageName2: Drinkimages2[indexPath.row], titleText2: DrinkimageTitles2[indexPath.row])
        } else if i == [3] && indexPath.section == 0 {
            cell.setCell2(imageName2: Drinkimages3[indexPath.row], titleText2: DrinkimageTitles3[indexPath.row])
        }
        return cell
    }
    
}

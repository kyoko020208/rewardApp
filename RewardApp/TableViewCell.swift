//
//  CustomCell.swift
//  StarbucksApp2
//
//  Created by Kyoko Otsuka on 2017/02/05.
//  Copyright © 2017年 Kyoko Otsuka. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var DrinkImage: UIImageView!
    
    @IBOutlet weak var DrinkTitle: UILabel!
    
    @IBOutlet weak var CoffeeImage: UIImageView!
    
    @IBOutlet weak var CoffeeTitle: UILabel!
    
    
    @IBOutlet weak var EspressoImage: UIImageView!
    
    @IBOutlet weak var EspressoTitle: UILabel!
    
    @IBOutlet weak var FraImage: UIImageView!
    
    @IBOutlet weak var FraTitle: UILabel!

    
    @IBOutlet weak var OtherImages: UIImageView!
    
    @IBOutlet weak var OtherTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setCell(imageName: String, titleText: String) {
        DrinkImage.image = UIImage(named: imageName)
        DrinkTitle.text = titleText
    }
    
    
    func setCell2(imageName2: String, titleText2:String){
        CoffeeImage.image = UIImage(named: imageName2)
        CoffeeTitle.text = titleText2
    }

    func setCell3(imageName3: String, titleText3:String){
        EspressoImage.image = UIImage(named: imageName3)
        EspressoTitle.text = titleText3
    }
    
    func setCell4(imageName4: String, titleText4:String){
        FraImage.image = UIImage(named: imageName4)
        FraTitle.text = titleText4
    }
    
    func setCell5(imageName5: String, titleText5:String){
        OtherImages.image = UIImage(named: imageName5)
        OtherTitle.text = titleText5
    }
}

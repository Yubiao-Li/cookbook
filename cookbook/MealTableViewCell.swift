//
//  MealTableViewCell.swift
//  cookbook
//
//  Created by Apple on 2019/11/12.
//  Copyright © 2019 biao. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var mealImg: UIImageView!

    var meal:Meal!
    
    @IBOutlet weak var counter: UILabel!
    @IBAction func minusClick(_ sender: UIButton) {
        if meal.count!-1<0
        {
            meal.count! = 0
        }
        else{
            meal.count! = meal.count! - 1
        }
        counter.text = "\(meal.count!)"
        
    }
    
    @IBAction func addClick(_ sender: Any) {
        meal.count! = meal.count! + 1
        counter.text = "\(meal.count!)"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    

}

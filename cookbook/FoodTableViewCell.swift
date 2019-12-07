//
//  FoodTableViewCell.swift
//  cookbook
//
//  Created by Apple on 2019/12/3.
//  Copyright © 2019 biao. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var FoodUIImage: UIImageView!
    
    @IBOutlet weak var FoodName: UILabel!
    
    @IBOutlet weak var prize: UILabel!
    
    @IBOutlet weak var number: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

//
//  File.swift
//  cookbook
//
//  Created by Apple on 2019/11/5.
//  Copyright © 2019 biao. All rights reserved.
//

import Foundation

import UIKit

class RestaurantViewCell : UITableViewCell{
    
    @IBOutlet weak var restaurantName: UILabel!
    
    @IBOutlet weak var restaurantImage: UIImageView!
    
    @IBOutlet weak var restaurantDesc: UILabel!
    
    @IBOutlet weak var salesVolumes: UILabel!
    @IBOutlet weak var resturantgrade: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
 /*  override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    */
}

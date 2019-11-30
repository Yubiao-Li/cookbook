//
//  Meal.swift
//  cookbook
//
//  Created by Apple on 2019/11/12.
//  Copyright © 2019 biao. All rights reserved.
//

import Foundation
import UIKit


class Meal: NSObject,NSCoding{
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name,forKey: "name")
        aCoder.encode(desc,forKey: "desc")
        aCoder.encode(img,forKey: "img")
        aCoder.encode(price,forKey: "price")
        aCoder.encode(count,forKey: "count")
    }
    
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as? String
        desc = aDecoder.decodeObject(forKey: "desc") as? String
        img = aDecoder.decodeObject(forKey: "img") as? UIImage
        price = aDecoder.decodeObject(forKey: "price") as? Float
        count = aDecoder.decodeObject(forKey: "count") as? Int
    }
    
    var name: String?
    var desc: String?
    var img: UIImage?
    var price: Float?
    var count: Int?
    
    static let DocumentDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentDirectory.appendingPathComponent("mealList")
    
    init(name:String?,desc:String?,img: UIImage?, price: Float?) {
        self.name = name
        self.desc = desc
        self.img = img
        self.price = price
        self.count = 0
    }
}

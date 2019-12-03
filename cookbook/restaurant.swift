//
//  File.swift
//  cookbook
//
//  Created by Apple on 2019/11/5.
//  Copyright © 2019 biao. All rights reserved.
//

import Foundation
import UIKit

class restaurant:NSObject,NSCoding{
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name,forKey: "name")
       aCoder.encode(desc,forKey: "desc")
       aCoder.encode(pic,forKey: "pic")
       aCoder.encode(grade,forKey: "grade")
       aCoder.encode(salesVolume,forKey: "salesVolume")
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as! String
       desc = aDecoder.decodeObject(forKey: "desc") as? String
        pic = aDecoder.decodeObject(forKey: "pic") as? UIImage
        grade = aDecoder.decodeObject(forKey: "grade") as? Float
        salesVolume = aDecoder.decodeObject(forKey: "salesVolume") as? Int
    }
    
    
    static let DocumentDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentDirectory.appendingPathComponent("restaurantList")
    

    var name: String
    var desc: String?
    var pic: UIImage?
    var grade: Float?
    var salesVolume: Int?
    init(name: String,desc: String?,grade: Float?,pic: UIImage?,salesVolume: Int?){
        self.name = name
        self.desc = desc
        self.grade = grade
        self.pic = pic
        self.salesVolume = salesVolume
    }
    func changeName(name: String){
        self.name=name
    }
    func changeDesc(desc: String?){
        self.desc=desc
    }
    func changeGrade(grade: Float?){
        self.grade=grade
    }
    
}

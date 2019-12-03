//
//  restaurant.swift
//  cookbook
//
//  Created by Apple on 2019/11/30.
//  Copyright © 2019 biao. All rights reserved.
//

import Foundation
import UIKit

class restaurant{
    
    var name: String!
    var desc: String?
    var pic: UIImage?
    var grade: Float?
    var salesVolume: Int?
    init(name: String?,desc: String?,grade: Float?,pic: UIImage?,salesVolume: Int?){
        self.name = name
        self.desc = desc
        self.grade = grade
        self.pic = pic
        self.salesVolume = salesVolume
    }
    func changeName(name: String!){
        self.name=name
    }
    func changeDesc(desc: String?){
        self.desc=desc
    }
    func changeGrade(grade: Float?){
        self.grade=grade
    }
    
}

//
//  ViewController2.swift
//  cookbook
//
//  Created by Apple on 2019/11/19.
//  Copyright © 2019 biao. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var message:[String]=["¥25.91","爆炒鱿鱼","主要原料：胡萝卜，玉米，牛肉···"]
    var img:UIImage=UIImage.init(named: "P10")!

    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var counter: UIStepper!
    @IBOutlet weak var bigImage: UIImageView!
    @IBOutlet weak var middleLab: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var bottomLab: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        price.text=self.getData()[0];
        middleLab.text="餐馆佳肴："+self.getData()[1];
        bottomLab.text=self.getData()[2];
        bigImage.image = self.img;
        

        // Do any additional setup after loading the view.
    }
    func getData()->[String]{
        return self.message;
        
    }

    @IBAction func seeShoppingCard(_ sender: Any) {
    }
    @IBAction func addToShoppingCard(_ sender: Any) {
       
        
    }
    @IBAction func valueChange(_ sender: Any) {
        
    }    /*
     
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

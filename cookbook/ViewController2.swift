//
//  ViewController2.swift
//  cookbook
//
//  Created by Apple on 2019/11/19.
//  Copyright © 2019 biao. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var counter: UIStepper!
    @IBOutlet weak var bigImage: UIImageView!
    @IBOutlet weak var middleLab: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var bottomLab: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        price.text=self.getData()[0];
        middleLab.text=self.getData()[1];
        bottomLab.text=self.getData()[2];
        bigImage.image = UIImage.init(named: self.getData()[3]);
        counter.value=1;

        // Do any additional setup after loading the view.
    }
    func getData()->[String]{
        return ["¥25.91","京东超市 超市尖货轮番抢购","良品铺子 即食鱿鱼丝 麻辣海鲜熟食鱿鱼仔鱿鱼丝干 网红香辣小吃手撕肉干肉铺类休闲零食66g烧烤味","P10"];
        
    }

    @IBAction func seeShoppingCard(_ sender: Any) {
    }
    @IBAction func addToShoppingCard(_ sender: Any) {
        counter.value=1;
        count.text="\(Int(counter.value))";
        
    }
    @IBAction func valueChange(_ sender: Any) {
        count.text="\(Int(counter.value))";
        
    }    /*
     
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

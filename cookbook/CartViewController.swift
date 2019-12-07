//
//  CartViewController.swift
//  cookbook
//
//  Created by Apple on 2019/11/30.
//  Copyright © 2019 biao. All rights reserved.
//

import UIKit

class CartViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    var remark:String?
    var address:String?
    var number:String?
    var time:String?
    
    @IBOutlet weak var AddressLable: UILabel!
    
    @IBOutlet weak var TimeLable: UILabel!
    
    @IBOutlet weak var RemarkLable: UILabel!
    
    @IBOutlet weak var NumberLable: UILabel!
    
    @IBOutlet weak var FoodTableView: UITableView!
    
    var mealList: [Meal]?
    var selectIndex = 0
    var alreadyLoad = false
    
    var restaurantDetail: restaurant?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FoodTableView.delegate = self
        FoodTableView.dataSource = self
        
        FoodTableView.rowHeight = 90
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mealList!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodTableViewCell
        cell.FoodName.text="\(mealList![indexPath.row].name!)"
        cell.FoodUIImage.image = mealList![indexPath.row].img
        let prize = String(format: "%.1f", mealList![indexPath.row].price! * Float(mealList![indexPath.row].count!))
        cell.prize.text="¥\(prize)"
        cell.number.text = "数量：\(mealList![indexPath.row].count!)"
        return cell

    }
  

    @IBAction func exitToHere(segue:UIStoryboardSegue){
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func saveToList(segue:UIStoryboardSegue){
        let addVC = segue.source as? AddressViewController
        
        address=addVC?.address
        
        print(address)
        AddressLable?.text = addVC?.address
        AddressLable?.isHidden = false
    }
    @IBAction func saveToFile(segue:UIStoryboardSegue){
        let timeVC = segue.source as? TimeViewController
        
        time=timeVC?.time
        
        print(time)
        TimeLable?.text = timeVC?.time
        TimeLable?.isHidden = false
    }
    @IBAction func saveToLable(segue:UIStoryboardSegue){
        let numberVC = segue.source as? NumberViewController
        
        number=numberVC?.number
        
        print(number)
        NumberLable?.text = numberVC?.number
        NumberLable?.isHidden = false
    }
    @IBAction func saveToHere(segue:UIStoryboardSegue){
        let remarkVC = segue.source as? RemarkViewController
        
        remark=remarkVC?.remark
        
        print(remark)
        RemarkLable?.text = remarkVC?.remark
        RemarkLable?.isHidden = false
    }
    

        
    }    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



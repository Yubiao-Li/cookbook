//
//  RestaurantDetailViewController.swift
//  cookbook
//
//  Created by Apple on 2019/11/5.
//  Copyright © 2019 biao. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var leftTableView: UITableView!
    @IBOutlet weak var rightTableView: UITableView!
    
    var mealList: [(String, [Meal])]?
    var selectIndex = 0
    var alreadyLoad = false

    
    func numberOfSections(in tableView: UITableView) -> Int {
        if (tableView.isEqual(leftTableView)){
            return 1
        }else{
            return mealList!.count
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tableView.isEqual(leftTableView)){
            return mealList!.count
        }else{
            return mealList![section].1.count
        }
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if tableView.isEqual(leftTableView){
            return 0
        }else{
            return 30
        }
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(red:0.94, green:0.94, blue:0.94, alpha:1.0)
        let viewLabel = UILabel(frame: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.size.width, height: 30))
        viewLabel.text = mealList![section].0
        viewLabel.textColor = UIColor(red:0.31, green:0.31, blue:0.31, alpha:1.0)
        view.addSubview(viewLabel)
        tableView.addSubview(view)
        return view
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.isEqual(leftTableView) {
            let cell = tableView.cellForRow(at: indexPath)
            selectIndex = indexPath.row
            cell!.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
            rightTableView.scrollToRow(at: IndexPath(row: 0, section: indexPath.row), at: .top, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if tableView.isEqual(leftTableView) {
            let cell = tableView.cellForRow(at: indexPath)
            cell!.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
//
//    func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
//            print(section)
//            for i in 0..<mealList!.count{
//                            leftTableView.cellForRow(at:IndexPath(row: i, section: 0))!.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
//            }
//            leftTableView.cellForRow(at:IndexPath(row: section + 1, section: 0))!.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
//
//    }
//
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (tableView.isEqual(leftTableView)){

            let cell = tableView.dequeueReusableCell(withIdentifier: "typeCell", for: indexPath)
            cell.textLabel?.text="\(mealList![indexPath.row].0)"
            
            cell.selectedBackgroundView = UIView()
            cell.selectedBackgroundView?.backgroundColor =
                UIColor(red: 135/255, green: 191/255, blue: 49/255, alpha: 0)

//            if indexPath.row == selectIndex {
//                cell.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
//            }
            
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "mealCell", for: indexPath) as! MealTableViewCell
            cell.title?.text="\(mealList![indexPath.section].1[indexPath.row].name!)"
            cell.subTitle?.text="\(mealList![indexPath.section].1[indexPath.row].desc!)"
            cell.mealImg?.image = UIImage.init(named: "meal")
            cell.price?.text="¥\(mealList![indexPath.section].1[indexPath.row].price!)"
            cell.meal = mealList![indexPath.section].1[indexPath.row]
            return cell
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        leftTableView.delegate = self
        leftTableView.dataSource = self
        rightTableView.delegate = self
        rightTableView.dataSource = self
        
        leftTableView.rowHeight = 50
        rightTableView.rowHeight = 90
        
        mealList = getData()
    }
    
    func getData()->[(String, [Meal])]{
        return [
                ("热销", [Meal(name: "黑椒牛柳", desc: "主要原料，胡萝卜，玉米。。。", img: nil, price: 15.9),
                         Meal(name: "黑椒牛柳", desc: "主要原料，胡萝卜，玉米。。。", img: nil, price: 15.9)]
                ),
                ("冷藏", [Meal(name: "火腿炒饭", desc: "主要原料，胡萝卜，玉米。。。", img: nil, price: 15.9),
                         Meal(name: "火腿炒饭", desc: "主要原料，胡萝卜，玉米。。。", img: nil, price: 15.9)]
                ),
                ("下单福利", [Meal(name: "鱼排", desc: "主要原料，胡萝卜，玉米。。。", img: nil, price: 15.9),
                    Meal(name: "鱼排", desc: "主要原料，胡萝卜，玉米。。。", img: nil, price: 15.9),
                    Meal(name: "鱼排", desc: "主要原料，胡萝卜，玉米。。。", img: nil, price: 15.9),
                    Meal(name: "鱼排", desc: "主要原料，胡萝卜，玉米。。。", img: nil, price: 15.9),
                    Meal(name: "鱼排", desc: "主要原料，胡萝卜，玉米。。。", img: nil, price: 15.9),
                    Meal(name: "鱼排", desc: "主要原料，胡萝卜，玉米。。。", img: nil, price: 15.9),
                    Meal(name: "鱼排", desc: "主要原料，胡萝卜，玉米。。。", img: nil, price: 15.9),
                    Meal(name: "鱼排", desc: "主要原料，胡萝卜，玉米。。。", img: nil, price: 15.9)]
                )
            ]
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let selectCell = sender as? MealTableViewCell{
            let indexPath = rightTableView.indexPath(for: selectCell)
            let selectMeal = mealList![(indexPath as! NSIndexPath).section].1[(indexPath as! NSIndexPath).row]
            print(selectMeal.name)
        }else{
            for section in 0..<mealList!.count{
                for row in 0..<mealList![section].1.count{
                    print(mealList![section].1[row].count)
                }
            }
        }
        
    }
    

}

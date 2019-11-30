//
//  RestaurantUITableViewControl.swift
//  cookbook
//
//  Created by Apple on 2019/11/5.
//  Copyright © 2019 biao. All rights reserved.
//

import UIKit

class RestaurantUITableViewControl: UITableViewController,UISearchBarDelegate {
    @IBOutlet weak var searchBar: UISearchBar!
    var result:[restaurant] = [restaurant]()
    var restaurantList:[restaurant] = [restaurant]()
    var nameList:[String] = ["沙县小吃","黄焖鸡米饭","真功夫","重庆小面","粤式茶餐厅","酸菜鱼饭店","隆江猪脚饭"]
    var descList:[String] = ["便宜实惠的小吃","好吃的黄焖鸡","品牌美食","正宗重庆小面","粤式菜馆","正宗酸菜鱼","美味猪脚饭"]
    var gradeList:[Float] = [4.5,4.6,4.8,4.7,4.9,4.5,4.6]
    var salesVolumeList:[Int] = [4598,3591,2141,3654,5126,2201,1257,3354]
    var picList:[UIImage?] = [UIImage]()
    func addRestuarant(name: String?,desc: String?,grade: Float?,pic: UIImage?,salesVolume: Int?){
        restaurantList.append(restaurant(name:name,desc:desc,grade: grade,pic: pic,salesVolume: salesVolume))
        
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    print("change")
    if(searchText==""){
        self.result=self.restaurantList
    }
    else{
        self.result=[]
        var c:Int = 0
        for arr in self.nameList{
            
            if arr.hasPrefix(searchText){
                self.result.append(restaurantList[c])
                
                print(arr)
                
            }
            c=c+1
        }
    }
    self.tableView.reloadData()
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        print("clik")
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("cancel")
        searchBar.text=""
        self.result=self.restaurantList
        self.tableView.reloadData()
    }
    
    
    
    func loadpic(count: Int){
        for i in 0...count{
            let d:UIImage? = UIImage.init(named: "P\(i)")
            picList.append(d)
        }
        
        
    }
    
    
    func initrestaurantList(){
        //UIImage aimage = [UIImage imageNamed:@"Image"];
        
        
        let count = nameList.count-1
        loadpic(count: count)
        for i in 0...count{
            addRestuarant(name: nameList[i], desc: descList[i], grade: gradeList[i], pic: picList[i], salesVolume: salesVolumeList[i])
        }
      }
 
    override func viewDidLoad() {
        super.viewDidLoad()
      initrestaurantList()
       self.result=self.restaurantList
      self.tableView.rowHeight = 100
        
        
        self.searchBar.placeholder="搜索"
        self.searchBar.delegate=self
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return result.count
    }

    
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "Restaurantcell", for: indexPath) as!
        RestaurantViewCell
    
       
            cell.restaurantName?.text=result[indexPath.row].name
        cell.restaurantDesc?.text=result[indexPath.row].desc
       
    cell.restaurantImage?.image=result[indexPath.row].pic
    
    
    cell.resturantgrade?.text =  "⭐️\(result[indexPath.row].grade!)"
        // Configure the cell...
    cell.salesVolumes?.text = "月售:\(result[indexPath.row].salesVolume!)"
    
    print(result.count)
        return cell
    }
 
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

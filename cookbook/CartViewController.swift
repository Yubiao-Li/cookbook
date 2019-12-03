//
//  CartViewController.swift
//  cookbook
//
//  Created by Apple on 2019/11/30.
//  Copyright © 2019 biao. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {

    var remark:String?
    var address:String?
    var number:String?
    var time:String?
    
    @IBOutlet weak var AddressLable: UILabel!
    
    @IBOutlet weak var TimeLable: UILabel!
    
    @IBOutlet weak var RemarkLable: UILabel!
    
    @IBOutlet weak var NumberLable: UILabel!
    
    @IBOutlet weak var FoodTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    }    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

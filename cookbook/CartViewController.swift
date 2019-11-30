//
//  CartViewController.swift
//  cookbook
//
//  Created by Apple on 2019/11/5.
//  Copyright © 2019 biao. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {

    // addText : UIText
    var address:String?
    var remark:String?
    var number:String?
    var time:String?
    
    @IBOutlet weak var AddressLabel: UILabel!
    
    @IBOutlet weak var RemarkLabel: UILabel!
    
    @IBOutlet weak var NumberLabel: UILabel!
    
    @IBOutlet weak var TimeLable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func exitToHere(segue: UIStoryboardSegue) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func saveToList(segue: UIStoryboardSegue) {
        let addVC = segue.source as? AddressViewController
        
        address=addVC?.address
        
        print(address)
     AddressLabel?.text = addVC?.address
        AddressLabel.isHidden = false
        
    }
    
    @IBAction func saveToFile(segue:
        UIStoryboardSegue){
        let reVC = segue.source as?
        RemarkViewController
        
        remark=reVC?.remark
        print(remark)
        
        RemarkLabel?.text = reVC?.remark
        RemarkLabel.isHidden = false
    }

    @IBAction func saveToHere(segue:
        UIStoryboardSegue){
        let nuVC = segue.source as?
        NumberViewController
        
        number=nuVC?.number
        print(number)
        
        NumberLabel?.text = nuVC?.number
        NumberLabel?.isHidden = false
        
    }
    
    @IBAction func saveToLable(segue:
        UIStoryboardSegue){
        let tiVC = segue.source as?
        TimeViewController
        
        time=tiVC?.time
        print(time)
        
        TimeLable?.text = tiVC?.time
        TimeLable?.isHidden = false
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }*/
 

}

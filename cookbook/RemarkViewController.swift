//
//  RemarkViewController.swift
//  cookbook
//
//  Created by Apple on 2019/11/19.
//  Copyright © 2019 biao. All rights reserved.
//

import UIKit

class RemarkViewController: UIViewController {

    
    @IBAction func changeRemark(_ sender: Any) {
    remark = String(append.text!)
    }
    
    @IBOutlet weak var append: UITextField!
    
    var remark:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "save"{
            print("save")
        }
        if segue.identifier == "cancel"{
            print("cancel")
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

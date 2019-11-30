//
//  TimeViewController.swift
//  cookbook
//
//  Created by Apple on 2019/11/30.
//  Copyright © 2019 biao. All rights reserved.
//

import UIKit

class TimeViewController: UIViewController {

    var time:String?
    
    @IBAction func changeTime(_ sender: Any) {
        time = String(timeTextField.text!)
    }
    
    @IBOutlet weak var timeTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "save"{
            print("save")
                    print(time)
        }
        if segue.identifier == "cancel"{
            print("cancel")
        }    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    }
}

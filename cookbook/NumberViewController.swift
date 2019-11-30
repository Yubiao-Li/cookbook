//
//  NumberViewController.swift
//  cookbook
//
//  Created by Apple on 2019/11/26.
//  Copyright © 2019 biao. All rights reserved.
//

import UIKit

class NumberViewController: UIViewController {

    
    @IBAction func changeNumber(_ sender: Any) {
        number = String(numberTextField.text!)
        
    }
    
    @IBOutlet weak var numberTextField: UITextField!
    
    var number:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "save"{
            print("save")
            }
        if segue.identifier == "cancel"{
            print("cancel")
            }
        }        // Do any additional setup after loading the view.
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



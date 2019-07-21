//
//  ViewController.swift
//  password
//
//  Created by 陳姿穎 on 2019/7/21.
//  Copyright © 2019 陳姿穎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var createPassword: UITextField!
    @IBOutlet weak var repeatPassword: UITextField!
    @IBOutlet weak var condition: UILabel!
    @IBAction func passwordCondition(_ sender: UITextField) {
        if createPassword.text == repeatPassword.text {
            condition.text = "Set Success!"
            condition.textColor = UIColor.black
        } else {
            condition.text = "Set Fail!"
            condition.textColor = UIColor.red
        }
    }
    
    

}


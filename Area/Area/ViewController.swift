//
//  ViewController.swift
//  Area
//
//  Created by 陳姿穎 on 2019/7/20.
//  Copyright © 2019 陳姿穎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var base1Alertion: UILabel!
    @IBOutlet weak var base1: UITextField!
    @IBAction func base1Condition(_ sender: UITextField) {
        if Int(sender.text!) != nil {
            base1Alertion.text = ""
        } else {
            base1Alertion.text = "Illegal!"
        }
    }
    @IBOutlet weak var base2Alertion: UILabel!
    @IBOutlet weak var base2: UITextField!
    @IBAction func base2Condition(_ sender: UITextField) {
        if Int(sender.text!) != nil {
            base2Alertion.text = ""
        } else {
            base2Alertion.text = "Illegal!"
        }
    }
    @IBOutlet weak var heightAlertion: UILabel!
    @IBOutlet weak var height: UITextField!
    @IBAction func heightCondition(_ sender: UITextField) {
        if Int(sender.text!) != nil {
            heightAlertion.text = ""
        } else {
            heightAlertion.text = "Illegal!"
        }
    }
    @IBOutlet weak var result: UILabel!
    @IBAction func calculateButton(_ sender: UIButton) {
        if let base1Number = Double(base1.text!), let base2Number = Double(base2.text!), let heightNumber = Double(height.text!) {
            result.text = "\(((base1Number + base2Number) * heightNumber) / 2.0) mm2"
            result.textColor = UIColor.black
        } else {
            result.text = "Illegal Data!"
            result.textColor = UIColor.red
        }
    }
    

}


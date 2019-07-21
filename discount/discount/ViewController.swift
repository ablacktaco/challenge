//
//  ViewController.swift
//  discount
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
    
    @IBOutlet weak var priceText: UITextField!
    @IBOutlet weak var priceAlertion: UILabel!
    @IBAction func priceCondition(_ sender: UITextField) {
        if Int(priceText.text!) != nil {
            priceAlertion.text = ""
        } else {
            priceAlertion.text = "Illegal!"
        }
    }
    @IBOutlet weak var currentDiscount: UILabel!
    @IBAction func discountSlider(_ sender: UISlider) {
        sender.value.round()
        currentDiscount.text = String(sender.value / 100.00)
        if let price = Int(priceText.text!) {
            let final = price * Int(sender.value) / 100
            priceAfterDiscount.text = String(final)
            priceAfterDiscount.textColor = UIColor.black
        } else {
            priceAfterDiscount.text = "Error!"
            priceAfterDiscount.textColor = UIColor.red
        }
    }
    @IBOutlet weak var priceAfterDiscount: UILabel!
    

}


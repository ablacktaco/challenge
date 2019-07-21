//
//  ViewController.swift
//  Fibonacci
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

    @IBOutlet weak var firstNumber: UILabel!
    @IBOutlet weak var secondNumber: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBAction func next(_ sender: UIButton) {
        firstNumber.text = secondNumber.text
        secondNumber.text = result.text
        result.text = String(Int(firstNumber.text!)! + Int(secondNumber.text!)!)
        
    }
    
}


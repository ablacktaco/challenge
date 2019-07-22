//
//  ViewController.swift
//  Switch
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

    @IBOutlet weak var backgroundColorSwitch: UILabel!
    @IBAction func backgroundColorSwitch(_ sender: UISwitch) {
//        if sender.isOn {
//            view.backgroundColor = UIColor.white
//            backgroundColorSwitch.textColor = UIColor.black
//        } else {
//            view.backgroundColor = UIColor.black
//            backgroundColorSwitch.textColor = UIColor.white
//        }
        let bool = sender.isOn
        backgroundColorSwitch.textColor = bool.foregroundColor
        super.view.backgroundColor = bool.backgroundColor
    }
}

fileprivate extension Bool {
    var foregroundColor: UIColor {
        return self ? UIColor.black : UIColor.white
    }
    var backgroundColor: UIColor {
        return self ? UIColor.white : UIColor.black
    }
}

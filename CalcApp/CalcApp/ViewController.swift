//
//  ViewController.swift
//  CalcApp
//
//  Created by 久保田舜大 on 2021/05/01.
//

import UIKit

class ViewController: UIViewController {

    
    var carModel = Car()
    override func viewDidLoad() {
        super.viewDidLoad()
        carModel.frontWheel = 10
        carModel.rearWheel = 15
        // Do any additional setup after loading the view.
    }

    @IBAction func doAction(_ sender: Any) {
        carModel.drive()
        carModel.move( toBack: "後ろに行くよ")
        let total = carModel.plusAunMinus(num1: carModel.frontWheel,num2: carModel.rearWheel)
        print("合計数：\(total)")
        
    }
    
}


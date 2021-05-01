//
//  Car.swift
//  CalcApp
//
//  Created by 久保田舜大 on 2021/05/01.
//

import Foundation

class Car{
    
    var frontWheel = 0
    var rearWheel = 0
    
    //Classを作成するときに必要
    //イニシャライズ=初期化
    init() {
        frontWheel = 2
        rearWheel = 2
    }
    
    //機能
    func drive(){
        print("運転開始")
        print("前転　\(frontWheel)")
        print("後転　\(rearWheel)")
    }
    
    func move (toBack:String){
        print(toBack)
    }
    
    func plusAunMinus(num1: Int, num2: Int)->Int{
        
        
        return num1 + num2
    }
}

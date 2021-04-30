//
//  ViewController.swift
//  SwiftTimer
//
//  Created by 久保田舜大 on 2021/04/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    var timer = Timer()
    var count = Int()
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
        //StopButtonを押せなくする
        stopButton.isEnabled = true
        
        for i in 0..<5{
            print(i)
            let image = UIImage(named: "\(i)")
            imageArray.append(image!)
        }
        imageView.image = UIImage(named: "0")
    }

    func startTimer(){
        //タイマーを回す　0.2秒毎にメソッドを呼ぶ
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    //0.2秒毎に呼ばれる
    @objc func timerUpdate(){
        count = +1
        imageView.image = imageArray[count]
    }

    @IBAction func start(_ sender: Any) {
        //imageViewのimageに反映させる
        
        //StartButtonを押せなくする
        startButton.isEnabled = true
        startTimer()
    }
    
    
    @IBAction func stop(_ sender: Any) {
        //imageViewのimageに反映している画像の流れを止める
        
        //StartButtonを押せるようにする
        startButton.isEnabled = false
        //タイマーを止める
        timer.invalidate()
        startTimer()
    }
}


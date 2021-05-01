//
//  ViewController.swift
//  Swift5KeyBorard1
//
//  Created by 久保田舜大 on 2021/05/01.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var userNameTxetField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //UITextFieldDelegateからdelegateを呼び、自分のクラスに反映
        userNameTxetField.delegate = self
        passwordTextField.delegate = self
    }

    @IBAction func login(_ sender: Any) {
        logoImageView.image = UIImage(named: "loginOK")
        
        userNameLabel.text = userNameTxetField.text
        passwordLabel.text = passwordTextField.text
        
    }
    //タッチでキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    //キーボードでリターンを押したとき、閉じる
    func textFieldShouldReturn(_ textFierd: UITextField) -> Bool {
        //キーボードが閉じる
        textFierd.resignFirstResponder()
        return true
    }
}


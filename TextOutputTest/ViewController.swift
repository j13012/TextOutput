//
//  ViewController.swift
//  TextOutputTest
//
//  Created by teacher on 2016/10/18.
//  Copyright © 2016年 teacher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var btn: UIButton!
    var value = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //ボタンアクション時のターゲットを設定
        btn.addTarget(self, action: #selector(buttonTapped(sender: )), for: .touchDown)
        
        //ビューに追加
        self.view.addSubview(textField)
        self.view.addSubview(btn)
        self.view.addSubview(label)
    }
    
    @IBAction func buttonTapped(sender: UIButton){
        //テキストフィールドの値を取得
        value = textField.text!
        
        //ラベルにテキストフィールドの値を設定
        label.text = value
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


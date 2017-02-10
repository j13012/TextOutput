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
        
        btn.addTarget(self, action: #selector(buttonTapped(sender: )), for: .touchDown)
        
        self.view.addSubview(textField)
        self.view.addSubview(btn)
        self.view.addSubview(label)
    }
    
    @IBAction func buttonTapped(sender: UIButton){
        value = textField.text!
        
        label.text = value
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


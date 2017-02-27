//
//  ViewController.swift
//  TipsApp
//
//  Created by clai on 2017/2/26.
//  Copyright © 2017年 clai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var tipsTextField: UITextField!
    @IBOutlet weak var resultTextField: UILabel!
    @IBOutlet weak var errorTextField: UILabel!
    
    @IBAction func submitButton(_ sender: UIButton) {
        
        if priceTextField.text == "" || tipsTextField.text == "" {
            errorTextField.isHidden = false
            resultTextField.isHidden = true
        }else{
            errorTextField.isHidden = true
            resultTextField.isHidden = false
            resultTextField.text = String(Double(priceTextField.text!)! * Double(tipsTextField.text!)! * 0.01)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


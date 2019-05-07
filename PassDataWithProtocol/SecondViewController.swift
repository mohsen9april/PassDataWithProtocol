//
//  SecondViewController.swift
//  PassDataWithProtocol
//
//  Created by Mohsen Abdollahi on 5/7/19.
//  Copyright © 2019 Mohsen Abdl. All rights reserved.
//

import UIKit


protocol PassData {
    func passdata(data: String)
}

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var myTextField: UITextField!
    
    var delegate: PassData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addButton(_ sender: Any) {
        
        if myTextField.text != "" {
            delegate?.passdata(data: myTextField.text!)
            navigationController?.popViewController(animated: true)
        }
    }
}


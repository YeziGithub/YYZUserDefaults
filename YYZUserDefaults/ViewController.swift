//
//  ViewController.swift
//  YYZUserDefaults
//
//  Created by yezi on 2019/6/6.
//  Copyright © 2019 yezi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.account.set(1234, forKey: .phone)
        print(UserDefaults.account.get(valueType: .integer, forKey: .phone))
        print(UserDefaults.account.get(valueType: .bool, forKey: .isLogin))
        print(UserDefaults.account.get(valueType: .string, forKey: .name))
    }
    
}


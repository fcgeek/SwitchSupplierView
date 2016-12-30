//
//  ViewController.swift
//  SwitchSupplierView
//
//  Created by liujianlin on 2016/12/30.
//  Copyright © 2016年 xdream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let switchSupplierView = SwitchSupplierView()
        switchSupplierView.frame.origin = CGPoint(x: 60, y: 100)    
        view.addSubview(switchSupplierView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


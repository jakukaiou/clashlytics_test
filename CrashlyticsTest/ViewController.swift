//
//  ViewController.swift
//  CrashlyticsTest
//
//  Created by 菊池健吾 on 2017/01/31.
//  Copyright © 2017年 Kikuchi-Kengo. All rights reserved.
//

import UIKit
import Crashlytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton(type: .roundedRect)
        
        button.frame = (frame: CGRect(x: self.view.frame.size.width - 60, y: 20, width: 50, height: 50))
        button.setTitle("Crash", for: .normal)
        button.addTarget(self, action: #selector(crashButtonTapped), for: .touchUpInside)
        view.addSubview(button)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func crashApplication(_ sender: Any) {
        var arr = ["a", "b"]
        print(arr[4])
    }
    @IBAction func crashButtonTapped(sender: AnyObject) {
        Crashlytics.sharedInstance().crash()
    }
}


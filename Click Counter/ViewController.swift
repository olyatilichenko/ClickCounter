//
//  ViewController.swift
//  Click Counter
//
//  Created by Olya Tilichenko on 30.01.18.
//  Copyright © 2018 Olya Tilichenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0;
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
}


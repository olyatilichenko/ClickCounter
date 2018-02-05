//
//  ViewController.swift
//  Click Counter
//
//  Created by Olya Tilichenko on 30.01.18.
//  Copyright © 2018 Olya Tilichenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var countNew = 0
    var label = UILabel()
    var labelNew = UILabel()
    
    var button = UIButton()
    var buttonNew = UIButton()
    
    func configUILabel(_ label: UILabel, _ y: Int){
        label.frame = CGRect.init(x: 150, y: y, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
    }
    
    func configUIButton(_ button: UIButton, _ y: Int){
        button.frame = CGRect.init(x: 150, y: y, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configUILabel(label, 150)
        configUILabel(labelNew, 50)
        
        configUIButton(button, 250)
        configUIButton(buttonNew, 350)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        buttonNew.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        
        button.addTarget(self, action: #selector(ViewController.changeColor), for: UIControlEvents.touchUpInside)
    }
    
    @objc func incrementCount(){
        self.count += 1
        self.labelNew.text = "\(self.count)"
    }
    
    @objc func decrementCount(){
        self.countNew -= 1
        self.label.text = "\(self.countNew)"
    }
    
    @objc func changeColor(){
        
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        
        self.view.backgroundColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
    }
}


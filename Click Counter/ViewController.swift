//
//  ViewController.swift
//  Click Counter
//
//  Created by Ruargh on 2021/05/22.
//  Copyright © 2021 Ruargh Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    var labelTwo: UILabel!
    let backgroundColor = [
        UIColor.brown,
        UIColor.clear,
        UIColor.cyan,
        UIColor.darkGray,
        UIColor.gray,
        UIColor.green,
        UIColor.lightGray,
        UIColor.magenta,
        UIColor.orange,
        UIColor.purple,
        UIColor.white,
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        //LabelTwo
        let labelTwo = UILabel()
        labelTwo.frame = CGRect(x: 150, y: 200, width: 60, height: 60)
        labelTwo.text = "100"
        view.addSubview(labelTwo)
        self.labelTwo = labelTwo
        
        // Button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        // Decrement Buton
        let buttonDecrement = UIButton()
        buttonDecrement.frame = CGRect(x: 150, y: 300, width: 150, height: 60)
        buttonDecrement.setTitle("Decrement", for: .normal)
        
        buttonDecrement.setTitleColor(UIColor.yellow, for: .normal)
        view.addSubview(buttonDecrement)
        
        buttonDecrement.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        
        
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.labelTwo.text = "\(self.count + 100)"
        self.view.backgroundColor = backgroundColor.randomElement()!
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.labelTwo.text = "\(self.count + 100)"
        self.view.backgroundColor = UIColor.red
    }

}


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
    @IBOutlet var label: UILabel!
    
    func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
}


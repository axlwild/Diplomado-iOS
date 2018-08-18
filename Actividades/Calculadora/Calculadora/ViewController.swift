//
//  ViewController.swift
//  Calculadora
//
//  Created by Axel Cervantes on 18/08/18.
//  Copyright © 2018 Axel Cervantes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pushButton(_ sender: UIButton) {
        display.text = String(sender.tag)
    }
    
}


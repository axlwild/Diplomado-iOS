//
//  ViewController.swift
//  AutolayoutExample
//
//  Created by Axel Cervantes on 28/09/18.
//  Copyright © 2018 Axel Cervantes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let red = UIColor(named: "IntenseRed")
    @IBOutlet weak var textLabel : UILabel!
    
    @IBAction func textChanged(_ sender: UITextField){
        guard let txt = sender.text else { return }
        textLabel.text = txt
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func setColor(_ sender: UIButton){
        print("holi")
        self.view.backgroundColor = red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  Componentes
//
//  Created by Axel Cervantes on 18/08/18.
//  Copyright © 2018 Axel Cervantes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var sliderFoto: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        foto.image = UIImage(named: "bob2")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fotoChanged(_ sender: Any) {
        if sliderFoto.value < 0.3{
            foto.image = UIImage(named: "bob3")
        }
        else if sliderFoto.value > 0.6{
            foto.image = UIImage(named: "bob")
        }
        else{
            foto.image = UIImage(named: "bob2")
        }
    }
    
    

}


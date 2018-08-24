//
//  ViewController.swift
//  ColorView
//
//  Created by Axel Cervantes on 11/08/18.
//  Copyright © 2018 Axel Cervantes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Interface viewer
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        //Color de borde negro
        colorView.layer.borderColor = UIColor.black.cgColor
        
        updateColor()
    }
    
    func updateColor(){
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var red: CGFloat = 0
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
      updateColor()
      updateControls()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateControls(){
        redSlider.isEnabled = redSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
    }

    @IBAction func reset(_ sender: UIButton) {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        redSwitch.isOn = false
        blueSwitch.isOn = false
        greenSwitch.isOn = false
        updateControls()
        updateColor()
    }
}


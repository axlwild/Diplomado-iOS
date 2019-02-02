
//
//  OrderConfirmationViewController.swift
//  Restaurante
//
//  Created by Axel Cervantes on 2/1/19.
//  Copyright © 2019 Axel Cervantes. All rights reserved.
//

import UIKit

class OrderConfirmationViewController: UIViewController {

    @IBOutlet weak var timeRemainingLabel: UILabel!
    var minutes: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let orderMinutes = minutes {
            timeRemainingLabel.text = "Thank you! please wait \(orderMinutes) minutes"
        }
    }

}

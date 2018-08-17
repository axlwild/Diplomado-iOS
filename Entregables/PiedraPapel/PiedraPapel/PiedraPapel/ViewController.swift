//
//  ViewController.swift
//  PiedraPapel
//
//  Created by Axel Cervantes on 11/08/18.
//  Copyright © 2018 Axel Cervantes. All rights reserved.
//

import UIKit
import GameplayKit


class ViewController: UIViewController {
    
    @IBOutlet weak var stoneLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        reset()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func reset(){
        stoneLabel.text = "🗿"
        textLabel.text = "Piedra, papel o tijera?"
        rockButton.isHidden = false
        rockButton.isEnabled = true
        paperButton.isHidden = false
        paperButton.isEnabled = true
        scissorsButton.isHidden = false
        scissorsButton.isEnabled = true
        playAgainButton.isHidden = true
    }
    func play(_ playerTurn: Sign){
        //Para evitar errores
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        let opponent = randomSign()
        stoneLabel.text = opponent.emoji
        let gameResult = playerTurn.takeTurn(opponent)
        switch gameResult {
        case .win:
            textLabel.text = "Ganaste!"
        case .draw:
            textLabel.text = "Empate!"
        case .lose:
            textLabel.text = "Perdiste 😞"
        case .start:
            textLabel.text = "Elije tu jugada 😏"
        }
        switch playerTurn {
        case .rock:
            rockButton.isHidden = false
            paperButton.isHidden = true
            scissorsButton.isHidden = true
        case .paper:
            rockButton.isHidden = true
            paperButton.isHidden = false
            scissorsButton.isHidden = true
        case .scissors:
            rockButton.isHidden = true
            paperButton.isHidden = true
            scissorsButton.isHidden = false
        }
        playAgainButton.isHidden = false
    }
    
    @IBAction func scissorsSelected(_ sender: UIButton) {
        play(Sign.scissors)
    }
    
    @IBAction func paperSelected(_ sender: UIButton) {
        play(Sign.paper)
    }
    @IBAction func rockSelected(_ sender: UIButton) {
        play(Sign.rock)
    }
    @IBAction func playAgain(_ sender: Any) {
        reset()
    }
    

}


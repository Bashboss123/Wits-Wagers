//
//  GameSettingsViewController.swift
//  Wits&Wagers
//
//  Created by Sasha Fujiwara on 2021/03/26.
//

import UIKit

class GameSettingsViewController: UIViewController {

    @IBOutlet weak var numOfPlayersLabel: UILabel!
    @IBOutlet weak var numOfPlayers: UISlider!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var numOfMin: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        numOfPlayersLabel.text = "1 player"
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func NextButton(_ sender: Any) {
        if numOfMin.text != ""{
            
            let isString = isStringAnInt(string: String(numOfMin.text!))
        if isString != true{
            alert(message: "Invalid value for minutes of play time.")
        } else if numOfMin.text == ""{
            alert(message: "You didn't tell me how long you want to play.")
        }
        }
    }
    
    func isStringAnInt(string: String) -> Bool {
        return Int(string) != nil
    }
    func alert(message: String) -> Int {
        let alert = UIAlertController(title: "Uh oh we ran into a problem 😥", message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okayAction)
        present(alert, animated: true, completion: nil)
        return 0
    }
    @IBAction func slider(_ sender: UISlider) {
        let roundedvalue = Int(sender.value)
        numOfPlayersLabel.text = "\(String(roundedvalue)) players"
    }
    
}

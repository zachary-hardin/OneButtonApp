//
//  ViewController.swift
//  BullsEye
//
//  Created by Zachary Hardin on 1/20/18.
//  Copyright © 2018 Zachary Hardin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetValueLabel: UILabel!
    var currentValue: Int = 50
    var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startNewRound()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        updateLabels()
    }
    
    func updateLabels() {
        targetValueLabel.text = String(targetValue)
    }

    @IBAction func showAlert() {
        let message: String = "The value of the slider is: \(currentValue)"
            + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Score:", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: startNewRound)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = Int(slider.value)
        print("The value of the slider is now: \(Int(slider.value))")
    }
}


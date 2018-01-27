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
    var currentValue: Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentValue = Int(slider.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let message: String = "You scored \(currentValue)"
        
        let alert = UIAlertController(title: "Score:", message: message, preferredStyle: .alert)
        
        // UIAlertAction specifies the the action that the user can take. It's the
        // alert's button title.
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = Int(slider.value)
        print("The value of the slider is now: \(Int(slider.value))")
    }
}


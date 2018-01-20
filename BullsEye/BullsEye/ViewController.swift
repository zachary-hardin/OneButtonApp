//
//  ViewController.swift
//  BullsEye
//
//  Created by Zachary Hardin on 1/20/18.
//  Copyright © 2018 Zachary Hardin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "OUCH!", message: "Don't you know it's mean to hit people? ☹️", preferredStyle: .alert)
        
        // UIAlertAction specifies the the action that the user can take. It's the
        // alert's button title.
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}


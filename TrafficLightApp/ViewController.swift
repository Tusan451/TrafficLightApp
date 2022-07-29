//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Olegio on 28.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        redLight.layer.cornerRadius = 110
        yellowLight.layer.cornerRadius = 110
        greenLight.layer.cornerRadius = 110
        startButton.layer.cornerRadius = 10
        
    }

    @IBAction func startButtonPressed() {
        redLight.alpha = 1
        startButton.setTitle("Next", for: .normal)
    }
    
}


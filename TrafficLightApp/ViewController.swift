//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Olegio on 28.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    enum CurrentLight {
        case red, yellow, green
    }

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
        
        startButton.layer.cornerRadius = 10
        
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            redLight.alpha = lightOn
            greenLight.alpha = lightOff
            currentLight = .yellow
        case .yellow:
            yellowLight.alpha = lightOn
            redLight.alpha = lightOff
            currentLight = .green
        case .green:
            greenLight.alpha = lightOn
            yellowLight.alpha = lightOff
            currentLight = .red
        }
    }
    
}


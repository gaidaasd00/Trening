//
//  TrafficViewController.swift
//  Trening
//
//  Created by Алексей Гайдуков on 26.07.2022.
//

import UIKit

class TrafficViewController: UIViewController {
    
    @IBOutlet var redLable: UIView!
    @IBOutlet var yellowLable: UIView!
    @IBOutlet var greenLable: UIView!
    
    @IBOutlet var nextButton: UIButton!
    
    private var curretLight = CurrentLight.red
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLable.alpha = lightOff
        yellowLable.alpha = lightOff
        greenLable.alpha = lightOff
        
        nextButton.setTitle("Start", for: .normal)
        
    }
    
    override func viewWillLayoutSubviews() {
    redLable.layer.cornerRadius = redLable.frame.height / 2
    yellowLable.layer.cornerRadius = redLable.frame.height / 2
    greenLable.layer.cornerRadius = redLable.frame.height / 2
    }
    
    
    @IBAction func nextButtonPressed() {
        if nextButton.currentTitle == "Start" {
            nextButton.setTitle("Next", for: .normal)
        }
        switch curretLight {
        case .red:
            redLable.alpha = lightOn
            greenLable.alpha = lightOff
            curretLight = .yellow
        case .yellow:
            redLable.alpha = lightOff
            yellowLable.alpha = lightOn
            curretLight = .green
        case .green:
            yellowLable.alpha = lightOff
            greenLable.alpha = lightOn
            curretLight = .red
        }
    }
    

}

extension TrafficViewController {
    private func string() {
        
    }
}

extension TrafficViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
    
}

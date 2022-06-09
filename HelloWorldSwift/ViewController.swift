//
//  ViewController.swift
//  HelloWorldSwift
//
//  Created by Gregory Mosia on 05.06.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var toggleLightButton: UIButton!
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 50
        redLight.alpha = lightIsOff
        
        yellowLight.layer.cornerRadius = 50
        yellowLight.alpha = lightIsOff
        
        greenLight.layer.cornerRadius = 50
        greenLight.alpha = lightIsOff
        
        toggleLightButton.layer.cornerRadius = 10
//        toggleLightButton.setFontSize(self: <#T##CGContext#>, 30)
    }
    
    @IBAction func toggleLightButtonAction() {
        toggleLightButton.setTitle("NEXT", for: .normal)

        switch currentLight {
        case .red:
            redLight.alpha = lightIsOn
            greenLight.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentLight = .red
        }
    }
}


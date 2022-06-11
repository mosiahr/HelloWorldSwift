//
//  ViewController.swift
//  HelloWorldSwift
//
//  Created by Gregory Mosia on 05.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mainView: UIView!
    
    // MARK: Red Attributs
    @IBOutlet var redNumber: UILabel!
    @IBOutlet var redSlider: UISlider!
    
    // MARK: Green Attributs
    @IBOutlet var greenNumber: UILabel!
    @IBOutlet var greenSlider: UISlider!
   
    // MARK: Blue Attributs
    @IBOutlet var blueNumber: UILabel!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
    }

    @IBAction func redSliderAction() {
        redNumber.text = String(round(redSlider.value))
        setMainVeiwColor()
    }
    
    @IBAction func greenSliderAction() {
        greenNumber.text = String(round(greenSlider.value))
        setMainVeiwColor()
    }
    
    @IBAction func blueSliderAction() {
        blueNumber.text = String(round(blueSlider.value))
        setMainVeiwColor()
        
    }
    
    private func setMainVeiwColor() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value/255),
            green: CGFloat(greenSlider.value/255),
            blue: CGFloat(blueSlider.value/255),
            alpha: 1)
    }
    
    
}

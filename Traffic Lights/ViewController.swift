//
//  ViewController.swift
//  Traffic Lights
//
//  Created by Мария Соловьева on 02.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIButton!
    @IBOutlet var yellowLight: UIButton!
    @IBOutlet var greenLight: UIButton!
    @IBOutlet var buttonNextLight: UIButton!
    
    let brightnest: CGFloat = 1
    let dark: CGFloat = 0.3
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = dark
        yellowLight.alpha = dark
        greenLight.alpha = dark
        
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        buttonNextLight.layer.cornerRadius = 15
        
        buttonNextLight.setTitle("Start", for: .normal)
    }
    
    
    @IBAction func buttonActiveLight(_ sender: Any) {
        buttonNextLight.setTitle("Next Light", for: .normal)
        
        switch count {
            
        case 0:
            redLight.alpha = brightnest
            greenLight.alpha = dark
            count = 1
            
        case 1:
            yellowLight.alpha = brightnest
            greenLight.alpha = dark
            redLight.alpha = dark
            count = 2
            
        case 2:
            greenLight.alpha = brightnest
            redLight.alpha = dark
            yellowLight.alpha = dark
            count = 0
            default:
            break
        }
    }
}

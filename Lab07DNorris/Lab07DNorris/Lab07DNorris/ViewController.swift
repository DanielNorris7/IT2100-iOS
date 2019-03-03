//
//  ViewController.swift
//  Lab07DNorris
//
//  Created by Daniel Norris on 3/3/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var sliderOutput: UILabel!
    @IBOutlet weak var stepperValue: UIStepper!
    @IBOutlet weak var stepperOutput: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Perform each action once to display the inital value.
        PerformSliderAction();
        PerformStepperAction();
    }

    @IBAction func sliderAction(_ sender: Any)
    {
        PerformSliderAction();
    }
    
    @IBAction func stepperAction(_ sender: Any)
    {
        PerformStepperAction();
    }
    
    private func PerformSliderAction()
    {
        sliderOutput.text = "Slider: " + String(format: "%.0f", sliderValue.value);
    }
    
    private func PerformStepperAction()
    {
        stepperOutput.text = "Stepper: " + String(format: "%.0f", stepperValue.value);
    }
}

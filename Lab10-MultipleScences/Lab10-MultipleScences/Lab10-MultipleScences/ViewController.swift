//
//  ViewController.swift
//  Lab10-MultipleScences
//
//  Created by Daniel Norris on 4/23/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        guard let nameVC = segue.destination as? Scene2ViewController else { return }
        nameVC.nameValue = nameTextField.text;
    }
    
    @IBAction func didUnwindFromScene2VC(_ segue: UIStoryboardSegue)
    {
        guard segue.source is Scene2ViewController else { return }
        nameTextField.text = nil;
    }

}


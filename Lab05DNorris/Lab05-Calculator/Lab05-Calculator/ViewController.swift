//
//  ViewController.swift
//  Lab05-Calculator
//
//  Created by Daniel Norris on 2/17/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var fullName: UITextField!
    
    @IBAction func createFullName(_ sender: Any)
    {
        fullName.text = firstName.text! + " " + lastName.text!;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


//
//  ViewController.swift
//  Lab12-AdvancedStoryboard
//
//  Created by Daniel Norris on 4/23/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNameEntry: UITextField!
    @IBOutlet weak var middleNameEntry: UITextField!
    @IBOutlet weak var lastNameEntry: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func setNameInformation (for segue: UIStoryboardSegue, sender: Any?)
    {
        guard let firstNameVC = segue.destination as? ContactInformationViewController
            else { return }
        
        guard let middleNameVC = segue.destination as? ContactInformationViewController
            else { return }
        
        guard let lastNameVC = segue.destination as? ContactInformationViewController
            else { return }
            
            
        firstNameVC.firstNameValueContact = firstNameEntry.text;
        middleNameVC.middleNameValueContact = middleNameEntry.text;
        lastNameVC.lastNameValueContact = lastNameEntry.text;
    }


}


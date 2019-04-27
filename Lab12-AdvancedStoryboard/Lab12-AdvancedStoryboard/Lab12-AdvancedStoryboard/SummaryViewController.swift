//
//  SummaryViewController.swift
//  Lab12-AdvancedStoryboard
//
//  Created by Daniel Norris on 4/24/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {

    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var addressLineOneLabel: UILabel!
    @IBOutlet weak var addressLineTwoLabel: UILabel!
    @IBOutlet weak var cityStateZipLabel: UILabel!
    @IBOutlet weak var emailAddressLabel: UILabel!
    
    var firstNameValue: String!;
    var middleNameValue: String!;
    var lastNameValue: String!;
    
    var addresssLineOneValue: String!;
    var addressLineTwoValue: String!;
    var cityValue: String!;
    var stateValue: String!;
    var zipCodeValue: String!;
    var emailAddressValue: String!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel?.text = "\(firstNameValue ?? String()) \(middleNameValue ?? String()) \(lastNameValue ?? String())";
        
        addressLineOneLabel.text = addresssLineOneValue;
        addressLineTwoLabel.text = addressLineTwoValue;
        cityStateZipLabel.text = "\(cityValue ?? String()), \(stateValue ?? String()), \(zipCodeValue ?? String())";
        
        emailAddressLabel.text = emailAddressValue;
    }
    
}

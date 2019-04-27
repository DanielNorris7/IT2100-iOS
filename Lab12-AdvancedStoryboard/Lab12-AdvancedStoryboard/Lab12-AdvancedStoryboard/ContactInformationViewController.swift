//
//  ContactInformationViewController.swift
//  Lab12-AdvancedStoryboard
//
//  Created by Daniel Norris on 4/24/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class ContactInformationViewController: UIViewController {


    @IBOutlet weak var addressLineOneEntry: UITextField!
    @IBOutlet weak var addressLineTwoEntry: UITextField!
    @IBOutlet weak var cityEntry: UITextField!
    @IBOutlet weak var stateEntry: UITextField!
    @IBOutlet weak var zipCodeEntry: UITextField!
    @IBOutlet weak var emailAddressEntry: UITextField!
    
    var firstNameValueContact: String!;
    var middleNameValueContact: String!;
    var lastNameValueContact: String!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?)
    {
        guard let addressLineOneVC = segue.destination as? SummaryViewController
            else { return }

        guard let addressLineTwoVC = segue.destination as? SummaryViewController
            else { return }

        guard let cityVC = segue.destination as? SummaryViewController
            else { return }

        guard let stateVC = segue.destination as? SummaryViewController
            else { return }

        guard let zipCodeVC = segue.destination as? SummaryViewController
            else { return }

        guard let emailAddressVC = segue.destination as? SummaryViewController
            else { return }

        addressLineOneVC.addresssLineOneValue = addressLineOneEntry.text;
        addressLineTwoVC.addressLineTwoValue = addressLineTwoEntry.text;
        cityVC.cityValue = cityEntry.text;
        stateVC.stateValue = stateEntry.text;
        zipCodeVC.zipCodeValue = zipCodeEntry.text;
        emailAddressVC.emailAddressValue = emailAddressEntry.text;
        
        guard let firstNameVC = segue.destination as? SummaryViewController
            else { return }
        
        guard let middleNameVC = segue.destination as? SummaryViewController
            else { return }
        
        guard let lastNameVC = segue.destination as? SummaryViewController
            else { return }
        
        
        firstNameVC.firstNameValue = firstNameValueContact;
        middleNameVC.middleNameValue = middleNameValueContact;
        lastNameVC.lastNameValue = lastNameValueContact;
    }

}

//
//  Date-ChooserViewController.swift
//  Lab11-DatePicker
//
//  Created by Daniel Norris on 4/27/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class Date_ChooserViewController: UIViewController {

    
    @IBAction func setDateTime(_ sender: Any) {
        (presentingViewController as! ViewController).calculatedDateDifference(chosenDate: (sender as! UIDatePicker).date as NSDate);
    }
    
    @IBAction func dismissDateChooser(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        (presentingViewController as! ViewController).calculatedDateDifference(chosenDate: NSDate());
    }

}

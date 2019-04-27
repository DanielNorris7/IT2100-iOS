//
//  ViewController.swift
//  Lab11-DatePicker
//
//  Created by Daniel Norris on 4/27/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateSelectedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func calculatedDateDifference(chosenDate: NSDate){
        let todaysDate: NSDate = NSDate();
        let differenceDate: TimeInterval = todaysDate.timeIntervalSince(chosenDate as Date) / 86400;
        
        let dateFormat: DateFormatter = DateFormatter();
        dateFormat.dateFormat = "MM d. yyyy hh:mm:ssa";
        
        let todaysDateString: String = dateFormat.string(from: todaysDate as Date);
        let choosenDateString: String = dateFormat.string(from: chosenDate as Date);
        
        let differenceOutput: String = NSString(format: "Difference between chosen date (%@) in days: %1.2f", choosenDateString, todaysDateString, fabs(differenceDate)) as String;
        
        dateSelectedLabel.text = differenceOutput;
    }


}


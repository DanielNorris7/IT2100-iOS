//
//  ViewController.swift
//  Lab06FindReplace
//
//  Created by Daniel Norris on 2/24/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var find: UITextField!
    @IBOutlet weak var replaceWith: UITextField!
    @IBOutlet weak var textField: UITextView!
    
    @IBAction func findAndReplace(_ sender: AnyObject)
    {
        let userFind = find.text!;
        let userReplace = replaceWith.text!;
        let textBlock = textField.text!;
        
        let replacedTextBlock = textBlock.replacingOccurrences(of: userFind, with: userReplace);
        
        textField.text = replacedTextBlock;
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


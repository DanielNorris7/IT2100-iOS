//
//  Scene2ViewController.swift
//  Lab10-MultipleScences
//
//  Created by Daniel Norris on 4/23/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController {
    
    
    @IBOutlet weak var helloName: UILabel!
    @IBOutlet weak var labelHelloName_Bad: UILabel!
    
    var nameValue: String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        helloName.text = "Hello, " + nameValue!;
    }

}

//
//  ViewController.swift
//  IT2100DNorris
//
//  Created by Daniel Norris on 1/27/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myMessage: UILabel;
        var myUnusedVariable: String;
        myMessage=UILabel(frame:CGRect(x: 30.0, y: 50.0, width: 300.0, height: 50.0));
        myMessage.font=UIFont.systemFont(ofSize: 48.0);
        myMessage.text="Hello Xcode";
        myMessage.textColor=UIColor(patternImage: UIImage(named: "Background")!);
        view.addSubview(myMessage);
        NSLog("Hello Xcode, Again");
    }
    
    // MARK: -Method for handling memory meanagement
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


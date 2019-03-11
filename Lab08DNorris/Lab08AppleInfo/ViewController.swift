//
//  ViewController.swift
//  Lab08AppleInfo
//
//  Created by Daniel Norris on 3/11/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webApple: WKWebView!
    @IBOutlet weak var appleLink: UISegmentedControl!
    
    private let appleIncURL = "https://en.wikipedia.org/wiki/Apple_Inc.";
    private let iOSURL = "https://en.wikipedia.org/wiki/IOS";
    private let xcodeURL = "https://en.wikipedia.org/wiki/Xcode";
    private let swiftURL = "https://en.wikipedia.org/wiki/Swift_(programming_language)";
    
    @IBAction func changeAppleLink(_ sender: Any)
    {
        CreateSegmentChangeLink();
    }
    
    private func CreateSegmentChangeLink()
    {
        var appleURLString = "";
        
        switch appleLink.selectedSegmentIndex
        {
        case 0:
            appleURLString = appleIncURL;
        case 1:
            appleURLString = iOSURL;
        case 2:
            appleURLString = xcodeURL;
        case 3:
            appleURLString = swiftURL;
        default:
            appleURLString = appleIncURL;
        }
        
        let myURL = URL(string: appleURLString);
        let myRequest = URLRequest(url: myURL!);
        webApple.load(myRequest);
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: appleIncURL);
        webApple.load(URLRequest(url: url!));
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning();
        // Dispose of any resources that can be recreated.
    }
}


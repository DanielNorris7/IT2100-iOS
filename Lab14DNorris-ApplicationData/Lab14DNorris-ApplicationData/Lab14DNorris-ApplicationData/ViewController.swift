//
//  ViewController.swift
//  Lab14DNorris-ApplicationData
//
//  Created by Daniel Norris on 5/8/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var toggleSwitch: UISwitch!
    @IBOutlet weak var hueSlider: UISlider!
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var nameView: UITextField!
    
    let onOffToggle = "onOff";
    let hueSetting = "hue";
    let applePicture = "picture";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefaults: UserDefaults = UserDefaults.standard;
        hueSlider.value = userDefaults.float(forKey: hueSetting);
        toggleSwitch.isOn = userDefaults.bool(forKey: onOffToggle);
        
        setBackgroundHueValue(sender: nil);
        
        view.backgroundColor = UIColor.green;
        
        setValuesFromPreferences();
        
        dismissKeyboard();
    }
    

    @IBAction func setBackgroundHueValue(sender: AnyObject?) {
        
        let userDefaults: UserDefaults = UserDefaults.standard;
        
        userDefaults.set(toggleSwitch.isOn, forKey: onOffToggle);
        userDefaults.set(hueSlider.value, forKey: hueSetting);
        userDefaults.synchronize();
        
        if toggleSwitch.isOn
        {
            view.backgroundColor = UIColor(hue: CGFloat(hueSlider.value),
                                         saturation: 0.75, brightness: 0.75, alpha: 1.0);
        }
        else
        {
            view.backgroundColor = UIColor.white;
        }
    }

    func setValuesFromPreferences() {
        let userDefaults: UserDefaults = UserDefaults.standard;
        
        let initalDefaults: [String:String] = [applePicture: "NewSchool"];
        
        userDefaults.register(defaults: initalDefaults);
        
        let picturePreference: String = userDefaults.string(forKey: applePicture)!;
        
        if picturePreference == "NewSchool"
        {
            picture.image = UIImage(named: "NewSchool.png");
        }
        else if picturePreference == "OldSchool"
        {
            picture.image = UIImage(named: "OldSchool.png");
        }
        else
        {
            picture.image = UIImage(named: "ThrowBack.png");
        }
        
    }
    
    @IBAction func storeSurvey(sender: AnyObject) {
        let csvLine: String="\(name.text!)\n";
        let paths = NSSearchPathForDirectoriesInDomains(
            FileManager.SearchPathDirectory.documentDirectory,
            FileManager.SearchPathDomainMask.userDomainMask, true);
        let docDir:String = paths[0];
        let surveyFile:String=(docDir as NSString).appendingPathComponent("name.csv");
        
        if !FileManager.default.fileExists(atPath: surveyFile) {
            FileManager.default.createFile(atPath: surveyFile,
                                           contents: nil, attributes: nil);
        }
        
        let fileHandle:FileHandle=FileHandle(forUpdatingAtPath:surveyFile)!
        fileHandle.seekToEndOfFile();
        fileHandle.write(csvLine.data(using: String.Encoding.utf8)!);
        fileHandle.closeFile();
        
        name.text="";
        
    }
    
    @IBAction func showResults(sender: AnyObject) {
        let paths = NSSearchPathForDirectoriesInDomains(
            FileManager.SearchPathDirectory.documentDirectory,
            FileManager.SearchPathDomainMask.userDomainMask, true);
        let docDir:String = paths[0] as String;
        let surveyFile:String=(docDir as NSString).appendingPathComponent("name.csv");
        
        if FileManager.default.fileExists(atPath: surveyFile) {
            let fileHandle:FileHandle = FileHandle(forReadingAtPath:surveyFile)!;
            let nameResults:String = NSString(data: fileHandle.availableData, encoding: String.Encoding.utf8.rawValue)! as String;
            fileHandle.closeFile();
            nameView.text = nameResults;
        }
    }
    
    @IBAction func hideKeyboard(sender: AnyObject) {
        name.resignFirstResponder();
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}


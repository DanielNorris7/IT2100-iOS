//
//  ViewController.swift
//  Lab13DNorris -DeveloperList
//
//  Created by Daniel Norris on 5/4/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let kSectionCount:Int = 2;
    let kRedSection: Int = 0;
    let kBlueSection: Int = 1;
    let cellID : String = "flowerCell";
    var flowerMessage: String?;

    //Array with developer names (note: matches image names):
    let webDevelopers: [String] = ["Al Dente", "Armand Hammer", "Barry Cade", "Cara Van"];
    
    let mobileDevelopers: [String] = ["Ginger Ayle", "June Bugg", "Iona Ford", "Sue Flay", "Tim Burr", "Will Wynn"];
    
    //Array with developer titles:
    let webDevelopersTitle: [String] = ["Full Stack", "ASP.NET", "PHP", "Node.js"];
    
    let mobileDevelopersTitle: [String] = ["iOS with Swift", "iOS and Android", "iOS with Objective-C", "iOS with Swift and Objective-C", "Android", "Ionic"];
    
    let webDevelopersDetails: [String] = ["A full stack developer capable of front-end and back-end development in a Windows environment.", "Back-end developer focused on database applications using a variety of DBMSs.", "Several years experience writing PHP with database connectvity using Linux and Windows.", "Newby developer with great demonstration of skills using Node.js and Angular. Some recent work in React."];
    
    let mobileDevelopersDetails: [String] = ["12 apps developed using Swift and Xcode", "Senior app developer with experience in Android and iOS development", "Maintains large code base still in Objective-C. Working to learn Swift.", "Staff expert in Objective-C. Lead efforts to upgrade from Objective-C to Swift.", "Android expert with experience raning to days of Eclipse to current Android Studio versions.", "Prototyping go-to. Uses Ionic to spin up fast prototypes for all apps."];
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        let numberOfRows = section == 0 ? webDevelopers.count : mobileDevelopers.count;
        return numberOfRows;
       
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionHeader = UILabel();
        
        if section == 0
        {
            sectionHeader.text = "Web Developer";
        }
        else
        {
            sectionHeader.text = "Mobile Developer";
        }
        
        sectionHeader.backgroundColor = UIColor.green;
        
        return sectionHeader;
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellID)! as UITableViewCell;
        
        if indexPath.section == 0
        {
            cell.textLabel!.text = webDevelopers[indexPath.row];
            cell.detailTextLabel!.text = webDevelopersTitle[indexPath.row];
        }
        else
        {
            cell.textLabel!.text = mobileDevelopers[indexPath.row];
            cell.detailTextLabel!.text = mobileDevelopersTitle[indexPath.row];
        }
            
        let flowerImage: UIImage = UIImage(named: cell.textLabel!.text!)!
        cell.imageView!.image = flowerImage;
        
        return cell;
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let defaultAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.cancel, handler: nil);
        
        if indexPath.section == 0
        {
            flowerMessage = "\(webDevelopersTitle[indexPath.row]) Developer\n\n\(webDevelopers[indexPath.row])\n\n\(webDevelopersDetails[indexPath.row])";
            
        }
        else
        {
            flowerMessage = "\(mobileDevelopersTitle[indexPath.row]) Developer\n\n\(mobileDevelopers[indexPath.row])\n\n\(mobileDevelopersDetails[indexPath.row])";
            
        }
        
        let alertController = UIAlertController(title: "Developer Selected", message: flowerMessage, preferredStyle: UIAlertController.Style.alert);
        
        alertController.addAction(defaultAction);
        
        present(alertController, animated: true, completion: nil)
    }
}


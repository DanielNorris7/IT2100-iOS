//
//  ViewController.swift
//  Lab09DNorris
//
//  Created by Daniel Norris on 4/6/19.
//  Copyright © 2019 Daniel Norris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var usersFavoriteLanguage: UILabel!
    @IBOutlet weak var userSelectedAction: UITextField!
    
    
    @IBAction func Action_EnterNameAndEmail(_ sender: Any)
    {
        UpdateUserNameAndEmail();
    }
    
    @IBAction func Action_SelectFavoriteLanguage(_ sender: Any)
    {
        UpdateUserFavoriteLanguage();
    }
    
    @IBAction func Action_SelectSheet(_ sender: Any)
    {
        UpdateUserSelectedAction();
    }
    
    
    private func UpdateUserNameAndEmail()
    {
        let alert = UIAlertController(title: "Enter Name and Email" , message: "Please enter your name and email address.", preferredStyle: .alert);
        
        alert.addTextField(configurationHandler: {(userNameTextField) in
            userNameTextField.placeholder = "User Name";
            userNameTextField.keyboardType = .default;
        });
        
        alert.addTextField(configurationHandler: {(emailTextField) in
            emailTextField.placeholder = "Email Address";
            emailTextField.keyboardType = .default;
        });
        
        let updateNameAndEmailAddress = UIAlertAction(title: "Okay", style: .default, handler:
        {
            (action) in
            // This isn't scalable, but it easily works for two fields.
            self.userName!.text = alert.textFields?.first?.text;
            self.userEmail!.text = alert.textFields?.last?.text;
        });
        
        alert.addAction(updateNameAndEmailAddress);
        
        present(alert, animated: true, completion: nil);
    }
    
    private func UpdateUserFavoriteLanguage()
    {
        let languages = ["C#", "Java", "Swift"];
        
        let alert = UIAlertController(title: "Select Favorite Language", message: "Please select your favorite language", preferredStyle: .alert);
        
        for language in languages
        {
            let languageOptions = UIAlertAction(title: language, style: .default, handler:
            {
                (action) in
                self.usersFavoriteLanguage!.text = language;
            });
            
            alert.addAction(languageOptions);
        }
        
        present(alert, animated: true, completion: nil);
    }
    
    private func UpdateUserSelectedAction()
    {
        let sheet = UIAlertController(title: "Choose and Action", message: "Send a follow up message", preferredStyle: .actionSheet);
        
        let sendFollowUp = UIAlertAction(title: "Send Follow-Up Info", style: .default, handler:
        {
            (action) in
            self.userSelectedAction!.text = "Thank you! We will send information about"
            + self.usersFavoriteLanguage.text!;
        });
        
        let doNotSendFollowUp = UIAlertAction(title: "Do no Send Information", style: .default, handler:
        {
            (action) in
            self.userSelectedAction!.text = "Thank you!";
        });
        
        let userCancel = UIAlertAction(title: "Cancel", style: .cancel, handler:
        {
            (action) in
            self.userSelectedAction!.text = "Pressed Cancel";
        });
        
        sheet.addAction(sendFollowUp);
        sheet.addAction(doNotSendFollowUp);
        sheet.addAction(userCancel);
        
        present(sheet, animated: true, completion: nil);
    }
}


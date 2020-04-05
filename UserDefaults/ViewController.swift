//
//  ViewController.swift
//  UserDefaults
//
//  Created by sahil pathania on 29/03/20.
//  Copyright © 2020 sahil pathania. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var passwordTxtField : UITextField!
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var passwordLbl : UILabel!
    
    //MARK:- Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- Actions
    @IBAction func saveBtnClicked(_ sender: Any) {
        guard let username = usernameTxtField.text , !username.isEmpty else{
            showErrorAlert(alertMessage: Constants.emptyUsernameMessage)
            return
        }
        guard username.count > 7 else {
            showErrorAlert(alertMessage: Constants.usernameLengthMessage)
            return
        }
        guard let password = passwordTxtField.text , !password.isEmpty else{
            showErrorAlert(alertMessage: Constants.emptyPasswordMessage)
            return
        }
        guard password.count > 7 else{
            showErrorAlert(alertMessage: Constants.passwordLengthMessage)
            return
        }
        Utitlity.sharedInstantce.setUsername(username: username)
        Utitlity.sharedInstantce.setPassword(password: password)
        showSuccessAlert(alertMessage: Constants.successMessage)
    }
    
    @IBAction func getBtnClicked(_ sender: Any) {
        guard !Utitlity.sharedInstantce.getUsername().isEmpty , !Utitlity.sharedInstantce.getPassword().isEmpty else{
            showErrorAlert(alertMessage: Constants.emptyDataMessage)
            return
        }
        usernameLbl.text = Utitlity.sharedInstantce.getUsername()
        passwordLbl.text = Utitlity.sharedInstantce.getPassword()
    }
}



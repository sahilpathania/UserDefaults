//
//  AlertControllerExtension.swift
//  UserDefaults
//
//  Created by sahil pathania on 29/03/20.
//  Copyright © 2020 sahil pathania. All rights reserved.
//

import UIKit
extension UIViewController{
    func showSuccessAlert(alertMessage : String) {
        let alertController = UIAlertController(title: Constants.success, message: alertMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: Constants.done, style: .default, handler: nil)
        self.present(alertController, animated: true , completion: nil)
        alertController.addAction(action)
    }
    func showErrorAlert(alertMessage : String) {
        let alertController = UIAlertController(title: Constants.error, message: alertMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: Constants.ok, style: .destructive, handler: nil)
        self.present(alertController, animated: true , completion: nil)
        alertController.addAction(action)
    }
}

//
//  Alert.swift
//  AppAlcoolOuGasolina
//
//  Created by Felipe Vieira Lima on 16/12/22.
//

import UIKit

class Alert {
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func showAlertInformation(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        
        alertController.addAction(okButton)
        controller.present(alertController, animated: true)
    }
}

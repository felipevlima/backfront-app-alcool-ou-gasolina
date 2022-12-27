//
//  CalculatorViewController.swift
//  AppAlcoolOuGasolina
//
//  Created by Felipe Vieira Lima on 28/11/22.
//

import UIKit

class CalculatorViewController: UIViewController {
    var screen: CalculatorScreen?
    var alert: Alert?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert = Alert(controller: self)
        screen?.delegate(delegate: self)
        // Do any additional setup after loading the view.
    }
    
    func validateTextFields() -> Bool {
        guard let ethanolPrice = screen?.ethanolPriceTextField.text else { return false }
        guard let gasPrice = screen?.gasPriceTextField.text else { return false }

        if ethanolPrice.isEmpty && gasPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção", message: "Informe os valores do álcool e da gasolina")
            return false
        } else if ethanolPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção!", message: "Informe o valor do álcool")
            return false
        } else if gasPrice.isEmpty {
            alert?.showAlertInformation(title: "Atenção", message: "Informe o valor da gasolina!")
            return false
        }
        return true
    }
}

extension CalculatorViewController: CalculatorScreenDelegate {
    func tappedCalculateButton() {
        if validateTextFields() {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            
            let ethanolPrice: Double = (formatter.number(from: screen?.ethanolPriceTextField.text ?? "0.0") as? Double) ?? 0.0
            let gasPrice: Double = (formatter.number(from: screen?.gasPriceTextField.text ?? "0.0") as? Double) ?? 0.0
            
            let vc = ResultViewController()
            
            if ethanolPrice / gasPrice > 0.7 {
                vc.result = "Gasolina"
            } else {
                vc.result = "Alcool"
            }
            navigationController?.pushViewController(vc, animated: true)
        }
 
    }
    
    func tappedBackButton() {
        navigationController?.popToRootViewController(animated: true)
    }
    
}

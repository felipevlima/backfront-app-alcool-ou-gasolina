//
//  ResultViewController.swift
//  AppAlcoolOuGasolina
//
//  Created by Felipe Vieira Lima on 19/12/22.
//

import UIKit

class ResultViewController: UIViewController {
    var screen: ResultScreen?
    var result: String = ""
    
    override func loadView() {
        screen = ResultScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.resultLabel.text = self.result
        screen?.delegate(delegate: self)
    }
}

extension ResultViewController: ResultScreenDelegate {
    func tappedCalculateBackButton() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    func tappedBackButton() {
        navigationController?.popViewController(animated: true)
    }
    
    
}

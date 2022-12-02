//
//  CalculatorViewController.swift
//  AppAlcoolOuGasolina
//
//  Created by Felipe Vieira Lima on 28/11/22.
//

import UIKit

class CalculatorViewController: UIViewController {
    var screen: CalculatorScreen?
    
    override func loadView() {
        screen = CalculatorScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}

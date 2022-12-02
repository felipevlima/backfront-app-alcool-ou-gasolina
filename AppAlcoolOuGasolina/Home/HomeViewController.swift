//
//  HomeViewController.swift
//  AppAlcoolOuGasolina
//
//  Created by Felipe Vieira Lima on 28/11/22.
//

import UIKit

class HomeViewController: UIViewController {
    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }


}

extension HomeViewController: HomeScreenDelegate {
    func tappedStartButton() {
        let vc = CalculatorViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

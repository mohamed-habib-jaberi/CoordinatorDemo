//
//  SecondViewController.swift
//  CoordinatorDemo
//
//  Created by mohamed  habib on 15/09/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import UIKit

public protocol SecondViewControllerDelegate: class {
    func navigateToFirstPage()
    func navigateToThirdPage()
}

class SecondViewController: UIViewController {
    
    public weak var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SecondViewController"
        
        // Use custom back button to pass through coordinator.
        let backButton = UIBarButtonItem(title: "BackFistVC", style: .plain, target: self, action: #selector(navigateBackToFirstpage))
        self.navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func navigateBackToFirstpage() {
        print("navigateBackToFirstpage")
        self.delegate?.navigateToFirstPage()
    }
    
    @IBAction func navigateToThirdPageAction(_ sender: Any) {
        self.delegate?.navigateToThirdPage()
    }
    
    
}

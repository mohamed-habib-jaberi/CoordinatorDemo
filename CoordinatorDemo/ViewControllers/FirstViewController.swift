//
//  FirstViewController.swift
//  CoordinatorDemo
//
//  Created by mohamed  habib on 15/09/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import UIKit

public protocol FirstViewControllerDelegate: class {
    func navigateToNextPage()
}

class FirstViewController: UIViewController {
    
    public weak var delegate: FirstViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "FirstViewController"
    }
    
    @IBAction func goToSecondPageAction(_ sender: Any) {
        self.delegate?.navigateToNextPage()
    }
    
}

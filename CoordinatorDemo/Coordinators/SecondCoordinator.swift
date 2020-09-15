//
//  SecondCoordinator.swift
//  CoordinatorDemo
//
//  Created by mohamed  habib on 15/09/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import Foundation
import UIKit

class SecondCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    unowned let navigationController:UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let secondViewController : SecondViewController = SecondViewController()
        self.navigationController.pushViewController(secondViewController, animated: true)
    }
}

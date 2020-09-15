//
//  FirstCoordinator.swift
//  CoordinatorDemo
//
//  Created by mohamed  habib on 15/09/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import UIKit

class FirstCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    unowned let navigationController:UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstViewController : FirstViewController = FirstViewController()
        firstViewController.delegate = self
        self.navigationController.viewControllers = [firstViewController]
    }
}

extension FirstCoordinator: FirstViewControllerDelegate {

    // Navigate to next page
    func navigateToNextPage() {
       let secondCoordinator = SecondCoordinator(navigationController: navigationController)
       childCoordinators.append(secondCoordinator)
       secondCoordinator.start()
    }
}

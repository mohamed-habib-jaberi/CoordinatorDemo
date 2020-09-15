//
//  Coordinator.swift
//  CoordinatorDemo
//
//  Created by mohamed  habib on 15/09/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import UIKit

public protocol Coordinator : class {

    var childCoordinators: [Coordinator] { get set }

    // All coordinators will be initilised with a navigation controller
    init(navigationController:UINavigationController)

    func start()
}

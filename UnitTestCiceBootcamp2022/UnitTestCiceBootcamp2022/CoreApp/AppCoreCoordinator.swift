//
//  AppCoreCoordinator.swift
//  UnitTestCiceBootcamp2022
//
//  Created by CICE on 09/03/2022.
//

import Foundation
import UIKit

protocol AppCoreCoordinatorProtocol {
    func initialViewController(window: UIWindow)
}

final class AppCoreCoordinator {
    var initialVC = UIViewController()
}

extension AppCoreCoordinator: AppCoreCoordinatorProtocol {
    func initialViewController(window: UIWindow) {
        self.initialVC = UnitTestCoordinator.navigation()
        window.rootViewController = self.initialVC
        window.makeKeyAndVisible()
    }
}

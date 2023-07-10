//
//  AppTabBarCoordinator.swift
//  MVVM+Clean
//
//  Created by Apinun on 9/7/2566 BE.
//

import UIKit

protocol AppTabBarCoordinator: Coordinator {
    func routeToHomePage()
    func getViewControllers() -> [UIViewController]
}

final class AppTabBarCoordinatorImpl: AppTabBarCoordinator {
    var navigationController: UINavigationController
    var parent: Coordinator
    var homeCoordinator: HomeCoordinator?
    var aboutCoordinator: AboutCoordinator?
    private (set) var initCoordinators = [Coordinator]()
    
    init(navigationController: UINavigationController, parent: Coordinator) {
        self.navigationController = navigationController
        self.parent = parent
    }

    func start(animated: Bool) {
        let viewModel = AppTabBarViewModelImpl(appTabBarCoordinator: self)
        let baseTabBarViewController = AppTabBarController(viewModel: viewModel)
        baseTabBarViewController.modalPresentationStyle = .fullScreen
        self.navigationController.pushViewController(baseTabBarViewController, animated: false)
    }
    
    func getViewControllers() -> [UIViewController] {
        guard let homeCoordinator, let aboutCoordinator else {
            fatalError("Crash Please create home view and about view controoler")
        }
        return [homeCoordinator.navigationController,
                aboutCoordinator.navigationController]
    }

    func routeToHomePage() {
        
    }
}


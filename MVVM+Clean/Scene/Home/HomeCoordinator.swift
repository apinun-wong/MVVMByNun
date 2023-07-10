//
//  HomeCoordinator.swift
//  MVVM+Clean
//
//  Created by Apinun on 9/7/2566 BE.
//

import UIKit

protocol HomeCoordinator: Coordinator {
    func routeToHomePage()
}

final class HomeCoordinatorImpl: HomeCoordinator {
    var navigationController: UINavigationController
    var parent: AppTabBarCoordinator
    
    init(navigationController: UINavigationController, parent: AppTabBarCoordinator) {
        self.navigationController = navigationController
        self.parent = parent
    }

    func start(animated: Bool) {
        let viewModel = HomeViewModelImpl(homeCoordinator: self)
        let vc = HomeViewController(nibName: "HomeViewController", bundle: nil, viewModel: viewModel)
        navigationController.setNavigationBarHidden(false, animated: true)
        vc.tabBarItem = UITabBarItem(title: "Home",
                                     image: UIImage(systemName: "house.fill"),
                                     selectedImage: nil)
        navigationController.pushViewController(vc, animated: animated)
    }

    func routeToHomePage() {
        
    }
}


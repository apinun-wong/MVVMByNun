//
//  AppTabBarController.swift
//  MVVM+Clean
//
//  Created by Apinun on 9/7/2566 BE.
//

import UIKit

final class AppTabBarController: UITabBarController {
    private (set) var initCoordinators = [Coordinator]()
    private var viewModel: AppTabBarViewModel
    
    init(viewModel: AppTabBarViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "AppTabBarController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        self.tabBar.isTranslucent = false
        
        tabBar.tintColor = .label
        viewControllers = viewModel.navigationControllers
    }

    /// Hides BaseTabBarViewController's navigation controller
    func hideNavigationController() {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    func cleanUpMerch() {
//        merchCoordinator.dismissMerchScreens()
    }
    
    func cleanUpZombieCoordinators() {
        /// Since the `MerchCoordinator` could be initialized from only two places we can assume every other instance of it
        /// existing inside the `childCoordinators` belongs to the `GreenViewController` and is safe to be removed.
        
//        if let currentCoordinators = coordinator?.childCoordinators {
//            for item in currentCoordinators {
//                let contains = initCoordinators.contains(where: {$0 === item})
//                if contains == false {
//                    /// Dismissing newly `MerchCoordinator` children coordinators
//                    if let merchCoordinator = item as? MerchCoordinator {
//                        merchCoordinator.dismissMerchScreens()
//                        coordinator?.childDidFinish(merchCoordinator)
//                    }
//
//                    /// Removing the `BlueCoordinator` which was added throught the `GreenViewController`
//                    if let blueCoordinator = item as? BlueCoordinator, let viewController = blueCoordinator.viewControllerRef as? DisposableViewController {
//                        viewController.cleanUp()
//                        blueCoordinator.viewControllerRef?.navigationController?.popViewController(animated: false)
//                        coordinator?.childDidFinish(blueCoordinator)
//                    }
//                }
//            }
//        }
    }
    
}


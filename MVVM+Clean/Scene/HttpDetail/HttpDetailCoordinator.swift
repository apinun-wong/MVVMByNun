//
//  HttpDetailCoordinator.swift
//  MVVM+Clean
//
//  Created by Apinun on 11/7/2566 BE.
//

import UIKit

protocol HttpDetailCoordinator: Coordinator {
    var appTabBar: AppTabBarController? { get set }
}

final class HttpDetailCoordinatorImpl: HttpDetailCoordinator {
    var navigationController: UINavigationController
    var parent: Coordinator
    var appTabBar: AppTabBarController?
    private var title: String
    private var item: CodeStatusResponse
    
    init(navigationController: UINavigationController, appTabBar: AppTabBarController? = nil, parent: Coordinator, title: String, item: CodeStatusResponse) {
        self.navigationController = navigationController
        self.parent = parent
        self.appTabBar = appTabBar
        self.title = title
        self.item = item
    }

    func start(animated: Bool) {
        let viewModel: HttpDetailViewModel = HttpDetailViewModelImpl(httpDetailCoordinator: self,
                                                                     title: title,
                                                                     item: item)
        let HttpDetailVc = HttpDetailViewController(nibName: "HttpDetailViewController", bundle: nil, viewModel: viewModel)
        appTabBar?.isHiddenView = true
        self.navigationController.pushViewController(HttpDetailVc, animated: true)
    }
}

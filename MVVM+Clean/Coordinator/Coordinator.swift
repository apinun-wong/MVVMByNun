//
//  Coordinator.swift
//  CoordinatorExample
//
//  Created by Apinun on 4/7/2566 BE.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}

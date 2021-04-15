//
//  BaseViewController.swift
//  MVVM+Clean
//
//  Created by Apinun on 15/4/2564 BE.
//

import UIKit
import MKProgress

protocol BasePublicFunctionProtocol {
    func hideProgress()
    func showProgress()
}

class BaseViewController: UIViewController, BasePublicFunctionProtocol {
    func hideProgress() {
        ProgressLoading.show()
    }
    
    func showProgress() {
        ProgressLoading.dismiss(nil)
    }
}

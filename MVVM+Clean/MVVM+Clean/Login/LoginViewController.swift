//
//  LoginViewController.swift
//  Qonnext
//
//  Created by Apinun Wongintawang on 12/23/19.
//  Copyright © 2019 Apinun Wongintawang. All rights reserved.
//

import UIKit

final class LoginViewController: BaseViewController {
    //private parameters
    @IBOutlet private weak var passwordView: UIView!
    @IBOutlet private weak var userNameView: UIView!
    @IBOutlet private weak var loginButton: UIButton!
    var viewModel: LoginViewModelProtocol = LoginViewModel()
    
    /** Ordering by
        1. Life cycle function
        2. Override function
        3. IBAction function
        4. private function
     */
    
    //Life Cycle function
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    //override function
    override func showProgress() {
        //If don't custom please don't declare
    }
    
    override func hideProgress() {
        //If don't custom please don't declare
    }
    
    //IBAction
    @IBAction private func didLogin(_ sender: UIButton) {
        viewModel.pushToLogin()
    }
    
    //private function
}

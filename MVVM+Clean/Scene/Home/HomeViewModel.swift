//
//  HomeViewModel.swift
//  MVVM+Clean
//
//  Created by Apinun on 9/7/2566 BE.
//

import Foundation

public protocol HomeInput: AnyObject, BaseViewModelInputs {}
public protocol HomeOutputs: AnyObject, BaseViewModelOutputs {}

public protocol HomeViewModel: HomeInput, HomeOutputs {
    var input: HomeInput { get }
    var output: HomeOutputs { get }
}

final class HomeViewModelImpl: BaseViewModel, HomeViewModel {
    var input: HomeInput { return self }
    var output: HomeOutputs { return self }
    
    var homeCoordinator: HomeCoordinator
    
    private var timeout: Double = 3
    
    init(homeCoordinator: HomeCoordinator) {
        self.homeCoordinator = homeCoordinator
        super.init()
    }
    
    func viewDidLoad() {
    }
}
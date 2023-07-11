//
//  HttpDetailViewModel.swift
//  MVVM+Clean
//
//  Created by Apinun on 11/7/2566 BE.
//

import Foundation
public protocol HttpDetailInput: AnyObject, BaseViewModelInputs {}
public protocol HttpDetailOutputs: AnyObject, BaseViewModelOutputs {
    var title: String { get }
    var detail: String { get }
    var httpCode: Int { get }
}

public protocol HttpDetailViewModel: HttpDetailInput, HttpDetailOutputs {
    var input: HttpDetailInput { get }
    var output: HttpDetailOutputs { get }
}

final class HttpDetailViewModelImpl: BaseViewModel, HttpDetailViewModel {
    var input: HttpDetailInput { return self }
    var output: HttpDetailOutputs { return self }
    
    var httpDetailCoordinator: HttpDetailCoordinator
    var title: String
    var httpCode: Int
    var detail: String
    
    init(httpDetailCoordinator: HttpDetailCoordinator, title: String, item: CodeStatusResponse) {
        self.title = title
        self.httpDetailCoordinator = httpDetailCoordinator
        self.httpCode = item.httpId
        self.detail = item.detail
        super.init()
    }
}

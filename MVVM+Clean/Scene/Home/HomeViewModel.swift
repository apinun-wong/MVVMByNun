//
//  HomeViewModel.swift
//  MVVM+Clean
//
//  Created by Apinun on 9/7/2566 BE.
//

import Foundation

public protocol HomeInput: AnyObject, BaseViewModelInputs {}
public protocol HomeOutputs: AnyObject, BaseViewModelOutputs {
    var setUpItems: ((_ sections: [HomeSection]) -> Void)? { get set }
    func getHeaderTitle(section: Int) -> String?
}

public protocol HomeViewModel: HomeInput, HomeOutputs {
    var input: HomeInput { get }
    var output: HomeOutputs { get }
}

final class HomeViewModelImpl: BaseViewModel, HomeViewModel {
    var input: HomeInput { return self }
    var output: HomeOutputs { return self }
    
    var homeCoordinator: HomeCoordinator
    var setUpItems: ((_ sections: [HomeSection]) -> Void)? = nil
    let getHttpStatusUseCase: GetHttpStatusUseCase
    
    private var sections: [HomeSection] = []
    
    init(homeCoordinator: HomeCoordinator,
         getHttpStatusUseCase: GetHttpStatusUseCase) {
        self.homeCoordinator = homeCoordinator
        self.getHttpStatusUseCase = getHttpStatusUseCase
        super.init()
    }
    
    func viewDidLoad() {
        guard let httpStatusData = getHttpStatusUseCase.getData() else {
            return
        }
        var sections: [HomeSection] = []
        for section in httpStatusData.data {
            var homeItems: [HomeItemType] = []
            let sectionItem = HomeSection(title: section.shortDescription, id: section.id)
            for item in section.data {
                let homeItemType = HomeItemType(title: "\(item.httpId)",
                             shortDescription: item.shortDescription)
                homeItems.append(homeItemType)
            }
            sectionItem.items = homeItems
            sections.append(sectionItem)
        }
        self.sections = sections
        setUpItems?(sections)
    }
    
    func getHeaderTitle(section: Int) -> String? {
        if let sectionItem = sections[safe: section] {
            return sectionItem.title
        }
        return nil
    }
}

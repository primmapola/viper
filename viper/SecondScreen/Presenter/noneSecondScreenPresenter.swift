//
//  SecondScreennoneSecondScreenPresenter.swift
//  viper
//
//  Created by primmapola on 29/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import Foundation

final class noneSecondScreenPresenter: NSObject {
    
    weak var view: noneSecondScreenViewInput?
    var interactor: noneSecondScreenInteractorInput?
    var router: noneSecondScreenRouterInput?
    weak var moduleOutput: noneSecondScreenModuleOutput?
    
    // MARK: - Private
    
}


// MARK: - Module Input
extension noneSecondScreenPresenter: noneSecondScreenModuleInput {
    
}


// MARK: - Interactor Output
extension noneSecondScreenPresenter: noneSecondScreenInteractorOutput {
    
}


// MARK: - View Output
extension noneSecondScreenPresenter: noneSecondScreenViewOutput {
    
    func didTriggerViewReadyEvent() {
        
    }
    
    func didTriggerViewWillAppearEvent() {
        
    }
    
}

//
//  FirstScreennoneFirstScreenPresenter.swift
//  viper
//
//  Created by primmapola on 29/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import Foundation
import UIKit

final class noneFirstScreenPresenter: NSObject {
    
    weak var view: noneFirstScreenViewInput?
    var interactor: noneFirstScreenInteractorInput?
    var router: noneFirstScreenRouterInput?
    weak var moduleOutput: noneFirstScreenModuleOutput?
    
    // MARK: - Private
    
}


// MARK: - Module Input
extension noneFirstScreenPresenter: noneFirstScreenModuleInput {
    
}


// MARK: - Interactor Output
extension noneFirstScreenPresenter: noneFirstScreenInteractorOutput {
    
}


// MARK: - View Output
extension noneFirstScreenPresenter: noneFirstScreenViewOutput {
    func didTriggerViewButtonTap() {
        let secondModuleAssembly = noneSecondScreenAssembly()
        
        secondModuleAssembly.assembleModule(
            moduleOutput: MyModuleOutput(),
            transition: { router in
                guard let view = router.viewController else { return }
                self.router?.presentSecondView(secondView: view)
            },
            completion: nil)
    }
    
    func didTriggerViewReadyEvent() {
    }
    
    func didTriggerViewWillAppearEvent() {
    }
}

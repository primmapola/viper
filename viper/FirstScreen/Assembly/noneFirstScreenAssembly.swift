//
//  noneFirstScreennoneFirstScreenAssembly.swift
//  viper
//
//  Created by primmapola on 29/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import Foundation

final class noneFirstScreenAssembly: NSObject {

    private var view = noneFirstScreenViewController(nibName: "noneFirstScreenViewController", bundle: Bundle.main)
    private var presenter = noneFirstScreenPresenter()
    private var router = noneFirstScreenRouter()
    private var interactor = noneFirstScreenInteractor()

    // MARK: - Public method
    @objc func assembleModule(moduleOutput: noneFirstScreenModuleOutput,
                              transition: ((noneFirstScreenRouterInput) -> Void)?,
                              completion: ((noneFirstScreenModuleInput) -> Void)?) {
        
        configureDependenciesWithModuleOutput(moduleOutput: moduleOutput)
        
        view.setupViewReadyBlock {
            self.addChildComponents()
            if let completion = completion {
                completion(self.presenter)
            }
        }
        
        if let transition = transition {
            transition(router)
        }
        
    }
    
    // MARK: - Child components
    private func addChildComponents() {
        // Present child submodules here
    }
    
    // MARK: - Configure dependencies
    private func configureDependenciesWithModuleOutput(moduleOutput: noneFirstScreenModuleOutput) {
        presenter.view = view
        view.output = presenter
        
        presenter.router = router
        router.view = view
        
        presenter.interactor = interactor
        interactor.output = presenter
        
        presenter.moduleOutput = moduleOutput
    }
}

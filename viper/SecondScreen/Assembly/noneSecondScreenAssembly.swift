//
//  noneSecondScreennoneSecondScreenAssembly.swift
//  viper
//
//  Created by primmapola on 29/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import Foundation

final class noneSecondScreenAssembly: NSObject {

    private var view = noneSecondScreenViewController(nibName: "noneSecondScreenViewController", bundle: Bundle.main)
    private var presenter = noneSecondScreenPresenter()
    private var router = noneSecondScreenRouter()
    private var interactor = noneSecondScreenInteractor()

    // MARK: - Public method
    @objc func assembleModule(moduleOutput: noneSecondScreenModuleOutput,
                              transition: ((noneSecondScreenRouterInput) -> Void)?,
                              completion: ((noneSecondScreenModuleInput) -> Void)?) {
        
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
    private func configureDependenciesWithModuleOutput(moduleOutput: noneSecondScreenModuleOutput) {
        presenter.view = view
        view.output = presenter
        
        presenter.router = router
        router.viewController = view
        
        presenter.interactor = interactor
        interactor.output = presenter
        
        presenter.moduleOutput = moduleOutput
    }

}

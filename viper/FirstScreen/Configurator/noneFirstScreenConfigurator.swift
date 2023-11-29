//
//  noneFirstScreennoneFirstScreenConfigurator.swift
//  viper
//
//  Created by primmapola on 28/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import UIKit

class FirstScreenModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? FirstScreenViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: FirstScreenViewController) {

        let router = FirstScreenRouter()

        let presenter = FirstScreenPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = FirstScreenInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}

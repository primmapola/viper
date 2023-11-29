//
//  noneSecondScreennoneSecondScreenConfigurator.swift
//  viper
//
//  Created by primmapola on 28/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import UIKit

class SecondScreenModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? SecondScreenViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: SecondScreenViewController) {

        let router = SecondScreenRouter()

        let presenter = SecondScreenPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = SecondScreenInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}

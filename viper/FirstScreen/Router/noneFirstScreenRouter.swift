//
//  FirstScreennoneFirstScreenRouter.swift
//  viper
//
//  Created by primmapola on 29/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import UIKit

final class noneFirstScreenRouter: BaseSwiftRouter {
    weak var view: noneFirstScreenViewController?
}

// MARK: - Router Input
extension noneFirstScreenRouter: noneFirstScreenRouterInput {
    func presentView(_ window: UIWindow, _ view: UIViewController) {
        window.rootViewController = view
        window.makeKeyAndVisible()
    }
    
    func presentSecondView(secondView: UIViewController) {
        self.view?.present(secondView, animated: true)
    }
}

//
//  FirstScreennoneFirstScreenRouterInput.swift
//  viper
//
//  Created by primmapola on 29/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import Foundation
import UIKit

@objc
protocol noneFirstScreenRouterInput: BaseSwiftRouterInput {
    var view: noneFirstScreenViewController? { get set }
    func presentView(_ window: UIWindow,_ view: UIViewController)
    func presentSecondView(secondView: UIViewController)
}

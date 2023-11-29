//
//  SecondScreennoneSecondScreenRouterInput.swift
//  viper
//
//  Created by primmapola on 29/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import Foundation
import UIKit

@objc
protocol noneSecondScreenRouterInput: BaseSwiftRouterInput {
    var viewController: noneSecondScreenViewController? { get set }
}

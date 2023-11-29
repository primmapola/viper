//
//  BaseSwiftRouter.swift
//  viper
//
//  Created by Grigory Don on 29.11.2023.
//

import Foundation
import UIKit

class BaseSwiftRouter: BaseSwiftRouterInput {
    func closeCurrentViewController() {
        print(#function)
    }
}

class MyModuleOutput: noneFirstScreenModuleOutput, noneSecondScreenModuleOutput {
    func detail() {
        print("detail method was called")
    }
}

//
//  SecondScreennoneSecondScreenViewInOut.swift
//  viper
//
//  Created by primmapola on 29/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import Foundation

// MARK: - View Input
protocol noneSecondScreenViewInput: AnyObject {
    
}

// MARK: - View Output
protocol noneSecondScreenViewOutput {
    func didTriggerViewReadyEvent()
    func didTriggerViewWillAppearEvent()
}
//
//  FirstScreennoneFirstScreenViewInOut.swift
//  viper
//
//  Created by primmapola on 29/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import Foundation

// MARK: - View Input
protocol noneFirstScreenViewInput: AnyObject {
    
}

// MARK: - View Output
protocol noneFirstScreenViewOutput {
    func didTriggerViewReadyEvent()
    func didTriggerViewWillAppearEvent()
    func didTriggerViewButtonTap()
}

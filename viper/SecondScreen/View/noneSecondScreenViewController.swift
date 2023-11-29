//
//  SecondScreennoneSecondScreenViewController.swift
//  viper
//
//  Created by primmapola on 29/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import UIKit

final class noneSecondScreenViewController: UIViewController {
        
    var output: noneSecondScreenViewOutput?
    var viewReadyBlock: (() -> Void)?
    
    // MARK: - Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        output?.didTriggerViewWillAppearEvent()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if isViewLoaded, let viewReadyBlock = viewReadyBlock {
            viewReadyBlock()
            self.viewReadyBlock = nil
        }
        
        output?.didTriggerViewReadyEvent()
        
        view.backgroundColor = .red
    }
    
    // MARK: - Public
    func setupViewReadyBlock(block: @escaping () -> Void) {
        viewReadyBlock = block;
    }

    // MARK: - Private

}


// MARK: - View Input
extension noneSecondScreenViewController: noneSecondScreenViewInput {
    
}

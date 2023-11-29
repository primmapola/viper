//
//  noneSecondScreennoneSecondScreenInitializer.swift
//  viper
//
//  Created by primmapola on 28/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import UIKit

class SecondScreenModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var secondscreenViewController: SecondScreenViewController!

    override func awakeFromNib() {

        let configurator = SecondScreenModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: secondscreenViewController)
    }

}

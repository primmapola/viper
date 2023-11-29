//
//  noneFirstScreennoneFirstScreenInitializer.swift
//  viper
//
//  Created by primmapola on 28/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import UIKit

class FirstScreenModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var firstscreenViewController: FirstScreenViewController!

    override func awakeFromNib() {

        let configurator = FirstScreenModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: firstscreenViewController)
    }

}

//
//  FirstScreennoneFirstScreenViewController.swift
//  viper
//
//  Created by primmapola on 29/11/2023.
//  Copyright © 2023 none. All rights reserved.
//

import UIKit

final class noneFirstScreenViewController: UIViewController {
        
    var output: noneFirstScreenViewOutput?
    var viewReadyBlock: (() -> Void)?
    
    private var button = UIButton()
    
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
        
        setupUI()
    }
    
    // MARK: - Public
    func setupViewReadyBlock(block: @escaping () -> Void) {
        viewReadyBlock = block;
    }

    // MARK: - Private

}

//MARK: - SetupUI
private extension noneFirstScreenViewController {
    func setupUI() {
        view.backgroundColor = .white
        
        setupButton()
    }
    
    func setupButton() {
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 100),
            button.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
}

//MARK: - Button's method
private extension noneFirstScreenViewController {
    @objc func buttonClicked() {
        output?.didTriggerViewButtonTap()
    }
}


// MARK: - View Input
extension noneFirstScreenViewController: noneFirstScreenViewInput {
    
}

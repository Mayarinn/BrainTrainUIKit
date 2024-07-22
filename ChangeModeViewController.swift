//
//  ChangeModeViewController.swift
//  BrainTrainUIKit
//
//  Created by Karina Osadchaya on 7/22/24.
//

import UIKit

class ChangeModeViewController: UIViewController {
    
//MARK: - variables
    
    var multiply1x1Button: UIButton = {
        var multiply1x1Button = UIButton()
        multiply1x1Button.setTitle("1x1", for: .normal)
        multiply1x1Button.layer.cornerRadius = 7
        multiply1x1Button.backgroundColor = .systemPurple
        multiply1x1Button.setTitleColor(.systemPink, for: .highlighted)
        multiply1x1Button.translatesAutoresizingMaskIntoConstraints = false
            
        return multiply1x1Button
    }()
    
//MARK: - functions
            
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubviews()
        setConstraints()
    }
    
    func addSubviews() {
        view.addSubview(multiply1x1Button)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            multiply1x1Button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            multiply1x1Button.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        ])
    }
}

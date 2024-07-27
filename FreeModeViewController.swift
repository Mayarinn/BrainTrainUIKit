//
//  FreeModeViewController.swift
//  BrainTrainUIKit
//
//  Created by Karina Osadchaya on 7/27/24.
//

import UIKit

class FreeModeViewController: UIViewController {

//MARK: - variables
    
    var titleLabel: UILabel = {
        var titleLabel = UILabel()
        titleLabel.text = ""
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
            
        return titleLabel
    }()
    
    var taskLabel: UILabel = {
        var taskLabel = UILabel()
        taskLabel.textAlignment = .right
        taskLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return taskLabel
    }()
    
//MARK: - functions
        
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Free Mode"
        view.backgroundColor = .systemBackground
        addSubviews()
        setConstraints()
    }
    
    func addSubviews() {
        view.addSubview(titleLabel)
        view.addSubview(taskLabel)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 75),
            titleLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}

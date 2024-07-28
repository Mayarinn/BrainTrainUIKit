//
//  Multiply2x1ViewController.swift
//  BrainTrainUIKit
//
//  Created by Karina Osadchaya on 7/24/24.
//

import UIKit

class Multiply2x1ViewController: UIViewController {
    
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
        title = "Multiply 2x1"
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
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            
            taskLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            taskLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 35),
            //width
            taskLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
}

//
//  ViewController.swift
//  BrainTrainUIKit
//
//  Created by Karina Osadchaya on 7/20/24.
//

import UIKit

class Multiply1x1ViewController: UIViewController {
    
//MARK: - variables
    
    var titleLabel: UILabel = {
        var titleLabel = UILabel()
        titleLabel.text = "Text"
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return titleLabel
    }()
    
    var taskLabel: UILabel = {
        var taskLabel = UILabel()
        taskLabel.text = "Task"
        taskLabel.textAlignment = .right
        taskLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return taskLabel
    }()
    
    var answerTextfield: UITextField = {
        var answerTextfield = UITextField()
        answerTextfield.placeholder = "Answer"
        answerTextfield.borderStyle = .roundedRect
        answerTextfield.translatesAutoresizingMaskIntoConstraints = false
        
        return answerTextfield
    }()

//MARK: - functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubviews()
        setConstraints()
    }
    
    func addSubviews() {
        view.addSubview(titleLabel)
        view.addSubview(taskLabel)
        view.addSubview(answerTextfield)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 75),
            
            taskLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
                        taskLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50)
        ])
    }


}


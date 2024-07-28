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
        title = "Multiply 2x1"
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
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 75),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            
            taskLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            taskLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 35),
            taskLabel.widthAnchor.constraint(equalTo: answerTextfield.widthAnchor),
            taskLabel.heightAnchor.constraint(equalToConstant: 30),
            
            answerTextfield.leadingAnchor.constraint(equalTo: taskLabel.trailingAnchor, constant: 10),
            answerTextfield.topAnchor.constraint(equalTo: taskLabel.topAnchor),
            answerTextfield.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            answerTextfield.heightAnchor.constraint(equalTo: taskLabel.heightAnchor)
        ])
    }
    
}

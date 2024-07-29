//
//  FreeModeViewController.swift
//  BrainTrainUIKit
//
//  Created by Karina Osadchaya on 7/27/24.
//

import UIKit

class FreeModeViewController: UIViewController {

//MARK: - variables
    
    var correctAnswer: Int = 0
    
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
    
    var checkButton: UIButton = {
        var checkButton = UIButton()
        checkButton.setTitle("Check", for: .normal)
        checkButton.layer.cornerRadius = 7
        checkButton.backgroundColor = .systemPurple
        checkButton.setTitleColor(.systemPink, for: .highlighted)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        
        return checkButton
    }()
    
//MARK: - functions
        
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Free Mode"
        view.backgroundColor = .systemBackground
        taskLabel.text = randomTask()
        addSubviews()
        setConstraints()
    }
    
    func randomTask() -> String {
        let mode: Int = Int.random(in: 0...1) // 0 for multiplication mode, 1 for adding
        let a = Int.random(in: 1...99)
        let b = Int.random(in: 1...99)
        var task: String
        if mode == 0 {
            correctAnswer = a * b
            task = "\(a) x \(b)"
        } else {
            correctAnswer = a + b
            task = "\(a) + \(b)"
        }
            
        return task
    }
    
    func addSubviews() {
        view.addSubview(titleLabel)
        view.addSubview(taskLabel)
        view.addSubview(answerTextfield)
        view.addSubview(checkButton)
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
            answerTextfield.heightAnchor.constraint(equalTo: taskLabel.heightAnchor),
            
            checkButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            checkButton.topAnchor.constraint(equalTo: taskLabel.bottomAnchor, constant: 35),
            checkButton.widthAnchor.constraint(equalToConstant: 85),
            checkButton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}

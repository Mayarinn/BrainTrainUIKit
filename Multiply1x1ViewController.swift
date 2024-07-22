//
//  ViewController.swift
//  BrainTrainUIKit
//
//  Created by Karina Osadchaya on 7/20/24.
//

import UIKit

class Multiply1x1ViewController: UIViewController {
    
//MARK: - variables
    
    var correctAnswer: Int = 0
    
    var titleLabel: UILabel = {
        var titleLabel = UILabel()
        titleLabel.text = "Text"
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
        checkButton.addTarget(self, action: #selector(checkAnswerButtonClicked), for: .touchUpInside)
        
        checkButton.translatesAutoresizingMaskIntoConstraints = false
            
        return checkButton
    }()

//MARK: - functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        taskLabel.text = randomTask()
        addSubviews()
        setConstraints()
    }
    
    func randomTask() -> String {
        var a: Int = Int.random(in: 1...9)
        var b: Int = Int.random(in: 1...9)
        correctAnswer = a*b
        
        return "\(a)x\(b)"
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
            titleLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 75),
            
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
    
    @objc func checkAnswerButtonClicked(_ sender: UIButton) {
        print("Hello")
    }


}


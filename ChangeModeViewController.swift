//
//  ChangeModeViewController.swift
//  BrainTrainUIKit
//
//  Created by Karina Osadchaya on 7/22/24.
//

import UIKit

class ChangeModeViewController: UIViewController {
    
//MARK: - variables
    
    var stackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    var multiplicationLabel: UILabel = {
        var multiplicationLabel = UILabel()
        multiplicationLabel.text = "Multiplication"
        multiplicationLabel.font = .systemFont(ofSize: 24, weight: .bold)
        
        return multiplicationLabel
    }()
    
    var multiply1x1Button: UIButton = {
        var multiply1x1Button = UIButton()
        multiply1x1Button.setTitle("1x1", for: .normal)
        multiply1x1Button.layer.cornerRadius = 7
        multiply1x1Button.backgroundColor = .systemPurple
        multiply1x1Button.setTitleColor(.systemPink, for: .highlighted)
        multiply1x1Button.addTarget(self, action: #selector(multiply1x1ButtonClicked), for: .touchUpInside)
        multiply1x1Button.translatesAutoresizingMaskIntoConstraints = false
            
        return multiply1x1Button
    }()
    
    var multiply2x1Button: UIButton = {
        var multiply2x1Button = UIButton()
        multiply2x1Button.setTitle("2x1", for: .normal)
        multiply2x1Button.layer.cornerRadius = 7
        multiply2x1Button.backgroundColor = .systemPurple
        multiply2x1Button.setTitleColor(.systemPink, for: .highlighted)
        multiply2x1Button.addTarget(self, action: #selector(multiply2x1ButtonClicked), for: .touchUpInside)
        multiply2x1Button.translatesAutoresizingMaskIntoConstraints = false
            
        return multiply2x1Button
    }()
    
    var addingLabel: UILabel = {
        var addingLabel = UILabel()
        addingLabel.text = "Adding"
        addingLabel.font = .systemFont(ofSize: 24, weight: .bold)
        addingLabel.translatesAutoresizingMaskIntoConstraints = false
            
        return addingLabel
    }()
    
    var adding11Button: UIButton = {
        var adding11Button = UIButton()
        adding11Button.setTitle("1+1", for: .normal)
        adding11Button.layer.cornerRadius = 7
        adding11Button.backgroundColor = .systemGray3
        adding11Button.translatesAutoresizingMaskIntoConstraints = false
        
        return adding11Button
    }()
    
    var adding21Button: UIButton = {
        var adding21Button = UIButton()
        adding21Button.setTitle("2+1", for: .normal)
        adding21Button.layer.cornerRadius = 7
        adding21Button.backgroundColor = .systemGray3
        adding21Button.translatesAutoresizingMaskIntoConstraints = false
        
        return adding21Button
    }()
    
    var freeModeLabel: UILabel = {
        var freeModeLabel = UILabel()
        freeModeLabel.text = "Free Mode"
        freeModeLabel.font = .systemFont(ofSize: 24, weight: .bold)
        freeModeLabel.translatesAutoresizingMaskIntoConstraints = false
            
        return freeModeLabel
    }()
    
//MARK: - functions
            
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Change Mode"
        view.backgroundColor = .systemBackground
        addSubviews()
        setConstraints()
    }
    
    func addSubviews() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(multiplicationLabel)
        stackView.addArrangedSubview(multiply1x1Button)
        stackView.addArrangedSubview(multiply2x1Button)
        stackView.addArrangedSubview(addingLabel)
        stackView.addArrangedSubview(adding11Button)
        stackView.addArrangedSubview(adding21Button)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            
            multiplicationLabel.heightAnchor.constraint(equalToConstant: 30),
            
            multiply1x1Button.heightAnchor.constraint(equalToConstant: 30),
            multiply2x1Button.heightAnchor.constraint(equalToConstant: 30),
            
            addingLabel.heightAnchor.constraint(equalToConstant: 30),
            
            adding11Button.heightAnchor.constraint(equalToConstant: 30),
            adding21Button.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
//MARK: - @objc functions
    
    @objc func multiply1x1ButtonClicked() {
        let multiply1x1ViewController = Multiply1x1ViewController()
        navigationController?.pushViewController(multiply1x1ViewController, animated: true)
    }
    
    @objc func multiply2x1ButtonClicked() {
        let multiply2x1ViewController = Multiply2x1ViewController()
        navigationController?.pushViewController(multiply2x1ViewController, animated: true)
    }
}

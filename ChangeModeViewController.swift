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
        multiplicationLabel.font = .systemFont(ofSize: 20, weight: .bold)
        
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
        
        multiply2x1Button.translatesAutoresizingMaskIntoConstraints = false
            
        return multiply2x1Button
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
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50)
        ])
    }
    
    
//MARK: - @objc functions
    
    @objc func multiply1x1ButtonClicked() {
        let multiply1x1ViewController = Multiply1x1ViewController()
        navigationController?.pushViewController(multiply1x1ViewController, animated: true)
    }
    
}

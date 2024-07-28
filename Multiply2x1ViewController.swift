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
    }
    
    func setConstraints() {
        
    }
    
}

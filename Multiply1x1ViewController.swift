//
//  ViewController.swift
//  BrainTrainUIKit
//
//  Created by Karina Osadchaya on 7/20/24.
//

import UIKit

class Multiply1x1ViewController: UIViewController {
    
    var titleLabel: UILabel = {
        var titleLabel = UILabel()
        titleLabel.text = "Text"
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return titleLabel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addSubviews()
    }
    
    func addSubviews() {
        view.addSubview(titleLabel)
    }


}


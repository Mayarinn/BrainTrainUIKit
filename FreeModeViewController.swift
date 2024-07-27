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
    }
    
    func setConstraints() {
        
    }
}

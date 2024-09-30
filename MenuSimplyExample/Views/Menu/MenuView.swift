//
//  MenuView.swift
//  MenuSimplyExample
//
//  Created by Jose David Bustos H on 28-09-17.
//

import UIKit

class MenuView: UIView {
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person.circle.fill")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Bienvenido"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let navigateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Config", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        backgroundColor = .systemGray
        layer.shadowOpacity = 1
        layer.shadowRadius = 6
        
        addSubview(profileImageView)
        addSubview(welcomeLabel)
        addSubview(navigateButton)
        
        NSLayoutConstraint.activate([
            profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            profileImageView.topAnchor.constraint(equalTo: topAnchor, constant: 160),
            profileImageView.widthAnchor.constraint(equalToConstant: 80),
            profileImageView.heightAnchor.constraint(equalToConstant: 80),
            
            welcomeLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 10),
            welcomeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            navigateButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 20),
            navigateButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func setNavigateAction(target: Any, action: Selector) {
        navigateButton.addTarget(target, action: action, for: .touchUpInside)
    }
}


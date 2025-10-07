//
//  ViewController.swift
//  MVVM-Medium
//
//  Created by Beyza Zengin on 7.10.2025.
//

import UIKit

class UserViewController: UIViewController {
    
    private let viewModel = UserViewModel()
    
    private let nameLabel = UILabel()
    private let ageLabel = UILabel()
    private let button = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    private func setupUI() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        ageLabel.font = UIFont.systemFont(ofSize: 18)
        
        button.setTitle("Kullanıcıyı Yükle", for: .normal)
        button.addTarget(self, action: #selector(loadUser), for: .touchUpInside)
        
        view.addSubview(nameLabel)
        view.addSubview(ageLabel)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            
            ageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 20)
        ])
    }
    
    @objc private func loadUser() {
        viewModel.fetchUser()
        updateUI()
    }
    
    private func updateUI() {
        nameLabel.text = viewModel.userName
        ageLabel.text = viewModel.userAgeText
    }
}


//
//  RegisterViewController.swift
//  Chat
//
//  Created by Alijon Jumayev on 4/2/24.
//

import UIKit

class RegisterViewController: UIViewController {
    
    private let image: UIImageView = {
        let image                                       = UIImageView()
        image.image                                     = UIImage(named: "chat1")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let Password: UITextField = {
        let textField = UITextField()
        textField.placeholder       = "Password"
        textField.isSecureTextEntry = true
        textField.borderStyle       = .roundedRect
        textField.textColor         = .white
        textField.backgroundColor   = .gray
        textField.font              = UIFont.systemFont(ofSize: 20)
        textField.textAlignment     = .center
        return textField
    }()
    
    private let userName: UITextField = {
        let textField = UITextField()
        textField.placeholder       = "Email"
        textField.borderStyle       = .roundedRect
        textField.textColor         = .white
        textField.backgroundColor   = .gray
        textField.font              = UIFont.systemFont(ofSize: 20)
        textField.textAlignment     = .center
        return textField
    }()
    
    private let pressRegisterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Register", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.tintColor                                 = .black
        button.backgroundColor                           = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius                        = 25
        button.layer.shadowColor                         = UIColor.white.cgColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return button
    }()
    
    private let background: UIImageView = {
        let background                                       = UIImageView()
        background.image                                     = UIImage(named: "5")
        background.translatesAutoresizingMaskIntoConstraints = false
        return background
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        [background, pressRegisterButton,userName,Password,image] .forEach {view.addSubview($0)}
        
        pressRegisterButton.addTarget(self, action: #selector(setRegisterButton), for: .touchUpInside)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(setRegisterButton))
        
//MARK: - background layout
        background.anchor(top: view.topAnchor, bottom: view.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor)
        
//MARK: - button layout
        
        pressRegisterButton.anchor(top: Password.bottomAnchor, bottom: nil, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 15, left: 40, bottom: 0, right: 40), size: .init(width: 0, height: 50))
        
 //MARK: - textfield layout
        
        Password.anchor(top: userName.bottomAnchor, bottom: nil, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 10, left: 10, bottom: 0, right: 10),size: .init(width: 0, height: 50))
        
        userName.anchor(top: view.safeAreaLayoutGuide.topAnchor, bottom: nil, leading: view.leadingAnchor, trailing: view.trailingAnchor,padding: .init(top: 20, left: 10, bottom: 0, right: 10),size: .init(width: 0, height: 50))
        
 //MARK: - image layout
        image.anchor(top: pressRegisterButton.bottomAnchor, bottom: nil, leading: view.leadingAnchor, trailing: view.trailingAnchor,padding: .init(top: 100, left: 10, bottom: 0, right: 10),size: .init(width: 0, height: 250))
    }
    
 //MARK: - navigation
    
    @objc func setRegisterButton() {
        let vc = ChatViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
        
    

        
        

    

}

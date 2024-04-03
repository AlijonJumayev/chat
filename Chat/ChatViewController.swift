//
//  ChatViewController.swift
//  Chat
//
//  Created by Alijon Jumayev on 4/3/24.
//

import UIKit

class ChatViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        let backgroundImage = UIImage(named: "6")
        let imageView = UIImageView(image: backgroundImage)
        tableView.backgroundView = imageView
        return tableView
    }()
    
    private let sendButton: UIButton = {
        let btn = UIButton()
        let image = UIImage(systemName: "paperplane.fill")
        btn.setBackgroundImage(image, for: .normal)
        btn.tintColor = .systemPink
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()
    
    private let textfield: UITextField = {
        let textField = UITextField()
        textField.borderStyle       = .roundedRect
        textField.textColor         = .black
        textField.backgroundColor   = .white
        textField.font              = UIFont.systemFont(ofSize: 20)
        textField.textAlignment     = .left
        let attributes: [NSAttributedString.Key: Any] = [
                    .foregroundColor: UIColor.systemGray,
                    .font: UIFont.systemFont(ofSize: 18)
                ]
        textField.attributedPlaceholder = NSAttributedString(string: "Write a messages...", attributes: attributes)
        return textField
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        self.navigationItem.title = "Chatting"
      
        [textfield,sendButton,tableView] .forEach {view.addSubview($0)}
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Log out", style: .plain, target: self, action: #selector(LoginOutButton))
        
        

 //MARK: - textfield layout
        
        textfield.anchor(top: nil, bottom: view.safeAreaLayoutGuide.bottomAnchor, leading: view.leadingAnchor, trailing: sendButton.leadingAnchor,padding: .init(top: 0, left: 10, bottom: 20, right: 10),size: .init(width: 0, height: 50))
 //MARK: - send button layout
        
        sendButton.anchor(top: nil, bottom: view.safeAreaLayoutGuide.bottomAnchor, leading: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 20, right: 10),size: .init(width: 50, height: 50))
        
 //MARK: - tableView layout
        
        tableView.anchor(top: view.safeAreaLayoutGuide.topAnchor, bottom: textfield.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor,padding: .init(top: 0, left: 0, bottom: 10, right: 0))
    }
    
    @objc func LoginOutButton() {
     
    }
    

}

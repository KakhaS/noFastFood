//
//  ViewController.swift
//  noFastFood
//
//  Created by Kakha Sepashvili on 06.11.22.
//

import UIKit

class MainPage: UIViewController {
    
    private let welcomeText: UILabel = {
        let text = UILabel()
        text.text = "Welcome to the journey of feeling better"
        text.textColor = .lightGray
        text.textAlignment = .center
        text.numberOfLines = 1
        
        return text
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(welcomeText)
        welcomeText.anchor(top: view.topAnchor, leading: view.leadingAnchor,   trailing: view.trailingAnchor, padding: .init(top: 80, left: 50, bottom: 0, right: 50))
       //this is changed
    }
}

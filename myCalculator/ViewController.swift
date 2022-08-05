//
//  ViewController.swift
//  Calculator
//
//  Created by Damir Chalkarov on 05.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var firstLine = [7, 8, 9]
    var secondLine = [4, 5, 6]
    var thirdLine = [1, 2, 3]

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let textField = UITextField()
//        view.addSubview(textField)
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.addTarget(self, action: #selector(textfieldAction(sender: )), for: .editingChanged)
//
//        textField.layer.borderWidth = 1
//        textField.layer.borderColor = UIColor.red.cgColor
//        textField.layer.cornerRadius = 15
//
//        NSLayoutConstraint.activate([
//            textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
//            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
//            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
//            textField.heightAnchor.constraint(equalToConstant: 40)
//        ])
      
        let stackView1 = UIStackView(arrangedSubviews: firstLine.map { makeButton(with: $0)} )
        stackView1.spacing = 6
        stackView1.translatesAutoresizingMaskIntoConstraints = false
//        stackView1.alignment = .fill
        stackView1.distribution = .fillEqually
        view.addSubview(stackView1)

        NSLayoutConstraint.activate([
            stackView1.topAnchor.constraint(equalTo: view.topAnchor, constant: 320),
            stackView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -90),
//            stackView1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 40)
        ])
        
        let stackView2 = UIStackView(arrangedSubviews: secondLine.map { makeButton(with: $0)} )
        stackView2.spacing = 6
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        stackView2.alignment = .fill
        stackView2.distribution = .fillEqually
        view.addSubview(stackView2)

        NSLayoutConstraint.activate([
            stackView2.topAnchor.constraint(equalTo: stackView1.bottomAnchor, constant: 10),
            stackView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -90),
//            stackView1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 40)
        ])
        
        let stackView3 = UIStackView(arrangedSubviews: thirdLine.map { makeButton(with: $0)} )
        stackView3.spacing = 6
        stackView3.translatesAutoresizingMaskIntoConstraints = false
        stackView3.alignment = .fill
        stackView3.distribution = .fillEqually
        view.addSubview(stackView3)

        NSLayoutConstraint.activate([
            stackView3.topAnchor.constraint(equalTo: stackView2.bottomAnchor, constant: 10),
            stackView3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -90),
//            stackView1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 40)
        ])
        
//        let stackView4 = UIStackView(arrangedSubviews: ["1", "2"])
    }

    func makeButton(with meaning: Int) -> UIButton {
        let button = UIButton()
        
        button.setTitle("\(meaning)", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.tag = meaning
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        
        button.backgroundColor = .lightGray
        
                button.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    button.widthAnchor.constraint(equalToConstant: 100),
                    button.heightAnchor.constraint(equalToConstant: 100)
                ])
        
        button.layer.cornerRadius = 40
        
        button.layer.masksToBounds = false
        
        
//      button.addTarget(self, action: #selector(buttonAction(sender: )), for: .touchUpInside)
        return button
    }
    
    @objc func textfieldAction(sender: UITextField) {
     
        
    }

}




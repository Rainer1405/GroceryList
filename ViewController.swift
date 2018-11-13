//
//  ViewController.swift
//  Grocery List
//
//  Created by Rainer Sainvil on 10/8/18.
//  Copyright © 2018 Rainer Sainvil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var groceryLabel: UILabel!
    var quantityLabel: UILabel!
    var groceryItemInputField: UITextField!
    var quantityInputField: UITextField!
    var addItemButton: UIButton!
    var groceryListTextView: UITextView!
    
    var str = "Grocery List: "

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .white
        
        groceryLabel = UILabel()
        groceryLabel.translatesAutoresizingMaskIntoConstraints = false
        groceryLabel.text = "Grocery Item: "
        groceryLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        groceryLabel.textAlignment = .right
        groceryLabel.textColor = .black
        view.addSubview(groceryLabel)
        
        quantityLabel = UILabel()
        quantityLabel.translatesAutoresizingMaskIntoConstraints = false
        quantityLabel.text = "Quantity: "
        quantityLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        quantityLabel.textAlignment = .right
        quantityLabel.textColor = .black
        view.addSubview(quantityLabel)
        
        groceryItemInputField = UITextField()
        groceryItemInputField.translatesAutoresizingMaskIntoConstraints = false
        groceryItemInputField.textAlignment = .left
        groceryItemInputField.font = UIFont.systemFont(ofSize: 16, weight: .light)
        groceryItemInputField.textColor = .black
        groceryItemInputField.backgroundColor = .gray
        view.addSubview(groceryItemInputField)
        
        quantityInputField = UITextField()
        quantityInputField.translatesAutoresizingMaskIntoConstraints = false
        quantityInputField.textAlignment = .left
        quantityInputField.font = UIFont.systemFont(ofSize: 16, weight: .light)
        quantityInputField.textColor = .black
        quantityInputField.backgroundColor = .gray
        view.addSubview(quantityInputField)
        
        addItemButton = UIButton()
        addItemButton.translatesAutoresizingMaskIntoConstraints = false
        addItemButton.setTitle("add item", for: .normal)
        addItemButton.setTitleColor(.blue, for: .normal)
        addItemButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        addItemButton.addTarget(self, action: #selector(nameButtonWasTapped), for: .touchUpInside)
        view.addSubview(addItemButton)
        
        groceryListTextView = UITextView()
        groceryListTextView.translatesAutoresizingMaskIntoConstraints = false
        groceryListTextView.text = str
        groceryListTextView.textAlignment = .center
        groceryListTextView.textColor = .black
        groceryListTextView.backgroundColor = .white
        groceryListTextView.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        groceryListTextView.isEditable = true
        view.addSubview(groceryListTextView)
        
        setupConstraints()
        
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            groceryLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            groceryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            groceryLabel.trailingAnchor.constraint(equalTo: view.centerXAnchor),
            groceryLabel.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        NSLayoutConstraint.activate([
            quantityLabel.topAnchor.constraint(equalTo: groceryLabel.bottomAnchor, constant: 32),
            quantityLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            quantityLabel.trailingAnchor.constraint(equalTo: view.centerXAnchor),
            quantityLabel.heightAnchor.constraint(equalToConstant: 24)
            ])
       
        NSLayoutConstraint.activate([
            groceryItemInputField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            groceryItemInputField.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 8),
            groceryItemInputField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            groceryItemInputField.heightAnchor.constraint(equalToConstant: 32)
            ])
        
        NSLayoutConstraint.activate([
            quantityInputField.topAnchor.constraint(equalTo: groceryLabel.bottomAnchor, constant: 32),
            quantityInputField.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 8),
            quantityInputField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            quantityInputField.heightAnchor.constraint(equalToConstant: 32)
            ])
        
        NSLayoutConstraint.activate([
            addItemButton.topAnchor.constraint(equalTo: quantityLabel.bottomAnchor, constant: 120),
            addItemButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            addItemButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            addItemButton.heightAnchor.constraint(equalToConstant: 24)
            ])
        
        NSLayoutConstraint.activate([
            groceryListTextView.topAnchor.constraint(equalTo: addItemButton.bottomAnchor, constant: 50),
            groceryListTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            groceryListTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            groceryListTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8)
            ])
        
    }
    
    @objc func nameButtonWasTapped() {
        print("Button was tapped" )
        str = str + "\nItem: " + groceryItemInputField.text! + "," + " Quantity: " + quantityInputField.text!
        viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


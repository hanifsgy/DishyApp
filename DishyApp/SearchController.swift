//
//  SearchController.swift
//  DishyApp
//
//  Created by Hanif Sugiyanto on 11/14/16.
//  Copyright © 2016 Extrainteger. All rights reserved.
//

import UIKit

class  SearchController: UIViewController {
    
    
    let background: UIImageView = {
       let background = UIImageView()
        background.image = UIImage(named: "backgroundDishy")
        background.contentMode = .scaleAspectFill
        background.layer.masksToBounds = true
        background.translatesAutoresizingMaskIntoConstraints = false
        return background
    }()
    
    let titleDishy: UILabel = {
       let title = UILabel()
        title.text = "Make ordering in the new going out"
        title.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = UIColor.red
        return title
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor.init(red: 255, green: 255, blue: 255, alpha: 1)
        navigationController?.isNavigationBarHidden = true
        
        setupView()
        
    }
    
    func setupView() {
        view.addSubview(background)
        setupConstraintBackground()
        view.addSubview(titleDishy)
        setupConstraintTitle()
    }
    
    func setupConstraintBackground() {
        background.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        background.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        background.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -200).isActive = true
        background.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func setupConstraintTitle() {
        titleDishy.topAnchor.constraint(equalTo: background.bottomAnchor, constant: 20).isActive = true
        titleDishy.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleDishy.heightAnchor.constraint(equalToConstant: 30).isActive = true
        titleDishy.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -16).isActive = true
    }
}

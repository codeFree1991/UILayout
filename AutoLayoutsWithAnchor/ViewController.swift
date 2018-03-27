//
//  ViewController.swift
//  AutoLayoutsWithAnchor
//
//  Created by G P Group on 27/03/18.
//  Copyright © 2018 gp group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let topRightView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .green
    return view
  }()
  
  let topLeftView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .red
    return view
  }()
  
  let bottomLeftView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .lightGray
    return view
  }()
  
  let bottomRightView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .black
    return view
  }()
  
  
  

  override func viewDidLoad() {
    super.viewDidLoad()
    setLayout()
  }
  
  
  func setLayout(){
    view.addSubview(topLeftView)
    view.addSubview(topRightView)
    
    view.addSubview(bottomLeftView)
    view.addSubview(bottomRightView)
    
    topRightView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
    //topRightView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    topRightView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    topRightView.widthAnchor.constraint(equalToConstant: 60).isActive = true
    topRightView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    
    topLeftView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
    topLeftView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    topLeftView.widthAnchor.constraint(equalToConstant: 60).isActive = true
    topLeftView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    
    bottomRightView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    bottomRightView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    bottomRightView.widthAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
    bottomRightView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    
    bottomLeftView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    bottomLeftView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
    bottomLeftView.widthAnchor.constraint(equalToConstant: 60).isActive = true
    bottomLeftView.heightAnchor.constraint(equalToConstant: 20).isActive = true
    
    
    let leftStackView = UIView()
    leftStackView.backgroundColor = .yellow
    
    let rightStackView = UIView()
    rightStackView.backgroundColor = .blue
    
    let centerStackViews = UIStackView(arrangedSubviews: [leftStackView, rightStackView])
    centerStackViews.translatesAutoresizingMaskIntoConstraints = false
    centerStackViews.distribution = .fillEqually
//    centerStackViews.axis = .vertical
    view.addSubview(centerStackViews)
    
    
    centerStackViews.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    centerStackViews.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    centerStackViews.widthAnchor.constraint(equalToConstant: 200).isActive = true
    centerStackViews.heightAnchor.constraint(equalToConstant: 150).isActive = true
    
    
  }

  

}


//
//  ViewController.swift
//  AprilConstraints
//
//  Created by Dariia Pavlovskaya on 10.04.2022.
//

import UIKit

final class FirstViewController: UIViewController {

    let viewTop = UIView()
    let viewLeftMiddle = UIView()
    let viewRightMiddle = UIView()
    let viewBottom = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    }
}

final class SecondViewController: UIViewController {
    
    let viewTop = UIView()
    let viewLeftMiddle = UIView()
    let viewRightMiddle = UIView()
    let viewBottom = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    }
}

extension SecondViewController {
    private func setupSubviews() {
        view.backgroundColor = .white
        
        viewTop.backgroundColor = .purple
        view.addSubview(viewTop)
        
        viewLeftMiddle.backgroundColor = .yellow
        view.addSubview(viewLeftMiddle)
        
        viewRightMiddle.backgroundColor = .orange
        view.addSubview(viewRightMiddle)
        
        viewBottom.backgroundColor = .cyan
        view.addSubview(viewBottom)
        view.subviews.forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        viewTop.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        viewTop.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        viewTop.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        viewTop.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewLeftMiddle.heightAnchor.constraint(equalToConstant: 75).isActive = true
        viewLeftMiddle.widthAnchor.constraint(equalToConstant: 75).isActive = true
        viewLeftMiddle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        viewLeftMiddle.topAnchor.constraint(equalTo: viewTop.bottomAnchor, constant: 20).isActive = true
        viewRightMiddle.topAnchor.constraint(equalTo: viewTop.bottomAnchor, constant: 20).isActive = true
        viewRightMiddle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        viewRightMiddle.heightAnchor.constraint(equalTo: viewLeftMiddle.heightAnchor, multiplier: 1).isActive = true
        viewRightMiddle.leftAnchor.constraint(equalTo: viewLeftMiddle.rightAnchor, constant: 20).isActive = true
        viewBottom.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewBottom.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        viewBottom.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewBottom.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
}

extension FirstViewController {
    private func setupSubviews() {
        view.backgroundColor = .white
        
        viewTop.backgroundColor = .purple
        //viewTop.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewTop)
        
        viewLeftMiddle.backgroundColor = .gray
        //viewLeftMiddle.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewLeftMiddle)
        
        viewRightMiddle.backgroundColor = .orange
        //viewRightMiddle.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewRightMiddle)
        
        viewBottom.backgroundColor = .cyan
        //viewBottom.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewBottom)
        view.subviews.forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        let topLeft = NSLayoutConstraint(item: viewTop,
                                         attribute: NSLayoutConstraint.Attribute.left,
                                         relatedBy: NSLayoutConstraint.Relation.equal,
                                         toItem: view,
                                         attribute: NSLayoutConstraint.Attribute.left,
                                         multiplier: 1,
                                         constant: 20)
        let topTop = NSLayoutConstraint(item: viewTop,
                                        attribute: .top,
                                        relatedBy: .equal,
                                        toItem: view,
                                        attribute: .top,
                                        multiplier: 1,
                                        constant: 50)
        let topRight = NSLayoutConstraint(item: viewTop,
                                          attribute: .right,
                                          relatedBy: .equal,
                                          toItem: view,
                                          attribute: .right,
                                          multiplier: 1,
                                          constant: -20)
        let topHeight = NSLayoutConstraint(item: viewTop,
                                           attribute: .height,
                                           relatedBy: .equal,
                                           toItem: view,
                                           attribute: .height,
                                           multiplier: 0.33,
                                           constant: 0)
        
        let leftMiddleLeft = NSLayoutConstraint(item: viewLeftMiddle,
                                         attribute: NSLayoutConstraint.Attribute.left,
                                         relatedBy: NSLayoutConstraint.Relation.equal,
                                         toItem: view,
                                         attribute: NSLayoutConstraint.Attribute.left,
                                         multiplier: 1,
                                         constant: 20)
        let leftMiddleTop = NSLayoutConstraint(item: viewLeftMiddle,
                                        attribute: .top,
                                        relatedBy: .equal,
                                        toItem: viewTop,
                                        attribute: .bottom,
                                        multiplier: 1,
                                        constant: 10)
        let leftMiddleWidth = NSLayoutConstraint(item: viewLeftMiddle,
                                          attribute: .width,
                                          relatedBy: .equal,
                                          toItem: view,
                                          attribute: .width,
                                          multiplier: 0.4,
                                          constant: 0)
        let leftMiddleHeight = NSLayoutConstraint(item: viewLeftMiddle,
                                           attribute: .height,
                                           relatedBy: .equal,
                                           toItem: view,
                                           attribute: .height,
                                           multiplier: 0.33,
                                           constant: 0)
        let rightMiddleRight = NSLayoutConstraint(item: viewRightMiddle,
                                                attribute: NSLayoutConstraint.Attribute.right,
                                                relatedBy: NSLayoutConstraint.Relation.equal,
                                                toItem: view,
                                                attribute: NSLayoutConstraint.Attribute.right,
                                                multiplier: 1,
                                                constant: -20)
        let rightMiddleTop = NSLayoutConstraint(item: viewRightMiddle,
                                                    attribute: .top,
                                                    relatedBy: .equal,
                                                    toItem: viewTop,
                                                    attribute: .bottom,
                                                    multiplier: 1,
                                                    constant: 10)
        let rightMiddleWidth = NSLayoutConstraint(item: viewRightMiddle,
                                                  attribute: .width,
                                                  relatedBy: .equal,
                                                  toItem: view,
                                                  attribute: .width,
                                                  multiplier: 0.4,
                                                  constant: 0)
        let rightMiddleHeight = NSLayoutConstraint(item: viewRightMiddle,
                                                   attribute: .height,
                                                   relatedBy: .equal,
                                                   toItem: view,
                                                   attribute: .height,
                                                   multiplier: 0.33,
                                                   constant: 0)
        let bottomTop = NSLayoutConstraint(item: viewBottom,
                                           attribute: .top,
                                           relatedBy: .equal,
                                           toItem: viewRightMiddle,
                                           attribute: .bottom,
                                           multiplier: 1,
                                           constant: 10)
        let bottomLeft = NSLayoutConstraint(item: viewBottom,
                                            attribute: NSLayoutConstraint.Attribute.left,
                                            relatedBy: NSLayoutConstraint.Relation.equal,
                                            toItem: view,
                                            attribute: NSLayoutConstraint.Attribute.left,
                                            multiplier: 1,
                                            constant: 20)
        let bottomRight = NSLayoutConstraint(item: viewBottom,
                                             attribute: .right,
                                             relatedBy: .equal,
                                             toItem: view,
                                             attribute: .right,
                                             multiplier: 1,
                                             constant: -20)
        let bottomBottom = NSLayoutConstraint(item: viewBottom,
                                              attribute: .bottom,
                                              relatedBy: .equal,
                                              toItem: view,
                                              attribute: .bottom,
                                              multiplier: 1,
                                              constant: -20)
        
        view.addConstraints([
            topLeft,
            topTop,
            topRight,
            topHeight,
            leftMiddleLeft,
            leftMiddleTop,
            leftMiddleWidth,
            leftMiddleHeight,
            rightMiddleRight,
            rightMiddleTop,
            rightMiddleWidth,
            rightMiddleHeight,
            bottomTop,
            bottomLeft,
            bottomRight,
            bottomBottom
        ])
    }
}


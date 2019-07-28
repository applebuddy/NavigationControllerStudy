//
//  SecondView.swift
//  NavigationController
//
//  Created by MinKyeongTae on 29/07/2019.
//  Copyright © 2019 MinKyeongTae. All rights reserved.
//

import UIKit

class SecondView: UIView {
    let firstButton: UIButton = {
        let firstButton = UIButton()
        firstButton.setTitle("Go to ThirdView", for: .normal)
        firstButton.isUserInteractionEnabled = true
        firstButton.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        firstButton.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return firstButton
    }()

    let secondButton: UIButton = {
        let secondButton = UIButton()
        secondButton.setTitle("Back to FirstView", for: .normal)
        secondButton.isUserInteractionEnabled = true
        secondButton.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        secondButton.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return secondButton
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        makeSubview()
        makeConstraint()
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func makeSubview() {
        addSubview(firstButton)
        addSubview(secondButton)
    }

    func makeConstraint() {
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            firstButton.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            firstButton.widthAnchor.constraint(equalTo: widthAnchor, constant: 0),
            firstButton.heightAnchor.constraint(equalToConstant: 100),
        ])
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 20),
            secondButton.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            secondButton.widthAnchor.constraint(equalTo: widthAnchor, constant: 0),
            secondButton.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
}

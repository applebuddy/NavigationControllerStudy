//
//  SecondViewController.swift
//  NavigationController
//
//  Created by MinKyeongTae on 29/07/2019.
//  Copyright © 2019 MinKyeongTae. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    let secondView: SecondView = {
        let secondView = SecondView()
        return secondView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SecondViewController"
        secondView.firstButton.addTarget(self, action: #selector(firstButtonPressed(_:)), for: .touchUpInside)
        secondView.secondButton.addTarget(self, action: #selector(secondButtonPressed(_:)), for: .touchUpInside)
    }

    override func loadView() {
        view = secondView
    }

    @objc func firstButtonPressed(_: UIButton) {
        print("pushViewController -> thirdView")
        let thirdViewController = ThirdViewController()
        navigationController?.pushViewController(thirdViewController, animated: true)
    }

    @objc func secondButtonPressed(_: UIButton) {
        print("popViewController -> firstView")
        navigationController?.popViewController(animated: true)
    }
}
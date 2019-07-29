//
//  ThirdViewController.swift
//  NavigationController
//
//  Created by MinKyeongTae on 29/07/2019.
//  Copyright © 2019 MinKyeongTae. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    let thirdView: ThirdView = {
        let thirdView = ThirdView()
        return thirdView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ThirdViewController"
        thirdView.firstButton.addTarget(self, action: #selector(firstButtonPressed(_:)), for: .touchUpInside)
        thirdView.secondButton.addTarget(self, action: #selector(secondButtonPressed(_:)), for: .touchUpInside)
    }

    override func loadView() {
        super.loadView()
        view = thirdView
    }

    // MARK: - ThirdView Button Event

    @objc func firstButtonPressed(_: UIButton) {
        print("popToViewController -> viewControllers[0]")
        guard let secondViewController = self.navigationController?.viewControllers[0] else { return }
        navigationController?.popToViewController(secondViewController, animated: true)
    }

    @objc func secondButtonPressed(_: UIButton) {
        print("popToRootViewController -> rootViewController")
        navigationController?.popToRootViewController(animated: true)
    }
}

//
//  ViewController.swift
//  NavigationController
//
//  Created by MinKyeongTae on 29/07/2019.
//  Copyright © 2019 MinKyeongTae. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let firstView: FirstView = {
        let firstView = FirstView()
        return firstView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "FirstViewController"
        firstView.firstButton.addTarget(self, action: #selector(firstButtonPressed(_:)), for: .touchUpInside)
        firstView.secondButton.addTarget(self, action: #selector(secondButtonPressed(_:)), for: .touchUpInside)
    }

    override func loadView() {
        super.loadView()
        view = firstView
    }

    // MARK:- FirstView Button Event
    @objc func firstButtonPressed(_: UIButton) {
        print("pushViewController -> secondViewController")
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
    }

    @objc func secondButtonPressed(_: UIButton) {
        print("pushViewController -> thirdViewController")
        let thirdViewController = ThirdViewController()
        navigationController?.pushViewController(thirdViewController, animated: true)
    }
}

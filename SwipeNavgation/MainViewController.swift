//
//  MainViewController.swift
//  SwipeNavgation
//
//  Created by Dmitry Martynov on 08.02.2022.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapFirstVC(_ sender: UIButton) {
        let vc = FirstViewController.initFromItsStoryboard()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func tapSecondVC(_ sender: UIButton) {
        let vc = SecondViewController.initFromItsStoryboard()
        navigationController?.pushViewController(vc, animated: true)
    }
}


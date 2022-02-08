//
//  SecondViewController.swift
//  SwipeNavgation
//
//  Created by Dmitry Martynov on 08.02.2022.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second - No SwipeToBack"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    

}

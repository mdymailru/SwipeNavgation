//
//  UIStoryboard+VC.swift
//  SwipeNavgation
//
//  Created by Dmitry Martynov on 08.02.2022.
//

import UIKit

public protocol StoryboardLoadable {
    
}

extension StoryboardLoadable where Self: UIViewController {
    
    static func initFromItsStoryboard() -> Self {
        let storyboardName = String(describing: self)
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController = storyboard.instantiate(self)
        return viewController
    }
}

extension UIStoryboard {
    
    public func instantiate<VC: UIViewController>(_ viewController: VC.Type) -> VC {
        guard let vc = self.instantiateInitialViewController() as? VC else {
            fatalError("Couldn't instantiate \(type(of: VC.self))")
        }

        return vc
    }
}

extension UIViewController: StoryboardLoadable {
    
}





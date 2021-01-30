//
//  ViewController+NibExtension.swift
//  IOSCoreSeriesSB
//
//  Created by 111542 on 1/31/21.
//

import UIKit

extension UIViewController {
    
    /// Load generic view controller from nib
    /// - Returns: Generic [T] View Controller
    public static func loadNib<T: UIViewController>() -> T {
        return T(nibName: String(describing: self), bundle: nil)
    }
}

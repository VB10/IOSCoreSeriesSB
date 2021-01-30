//
//  CircleViewProtocol.swift
//  IOSCoreSeriesSB
//
//  Created by 111542 on 1/31/21.
//

import Foundation
import UIKit
protocol CircleViewProtocol : UIViewController {
    func makeCirlceView(view: UIView)
}


extension CircleViewProtocol {
    func makeCirlceView(view: UIView){
        view.layer.cornerRadius = min(view.frame.size.width, view.frame.size.height) / 2
        view.clipsToBounds = true
    }
}

//
//  UIViewExtension.swift
//  IOSCoreSeriesSB
//
//  Created by 111542 on 1/31/21.
//

import Foundation
import UIKit

extension UIView {

    
    /// Make Circle View
    func makeCircleView() {
        layer.cornerRadius = min(frame.size.width, frame.size.height) / 2
        clipsToBounds = true
    }

    func makePaddingAll(val: CGFloat) {
        self.layoutMargins = UIEdgeInsets.init(top: val, left: val, bottom: val, right: val)
    }
    
    /// Make Padding Horizontal
    /// - Parameter val: CGFloat
    func makePaddingHorizontal(val: CGFloat) {
        self.layoutMargins = UIEdgeInsets.init(top: .zero, left: val, bottom: .zero, right: val)
    }
}

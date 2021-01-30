//
//  SampleProtocol.swift
//  IOSCoreSeriesSB
//
//  Created by 111542 on 1/24/21.
//

import UIKit

enum UserType {
    case ADMIN
    case USER
}

protocol SampleProtocol: UIViewController {
    var userType: UserType? { get }
    func changeUserTypeBackgroundColor()
}

extension SampleProtocol {
    var userType: UserType? {
        get { return .USER }
    }

    func changeUserTypeBackgroundColor() {
        view.backgroundColor = userType == UserType.ADMIN ? .black : .red
    }
}




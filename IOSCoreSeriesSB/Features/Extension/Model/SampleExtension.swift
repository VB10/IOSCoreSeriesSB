//
//  SampleExtension.swift
//  IOSCoreSeriesSB
//
//  Created by 111542 on 1/31/21.
//

import Foundation
import UIKit

class User {
    var name: String?

}
extension User {
    enum UserType {
        case ADMIN
        case USER
    }
    convenience init(val: String, userType: UserType) {
        self.init()
        name = userType == UserType.ADMIN ? "ADmin" : "User"
    }

}


enum QueryValues {
    case VERSION
}


extension QueryValues {
    
    /// Query Version Geneartor
    /// - Parameter val: String
    /// - Returns: Map
    func queryString(val: String) -> String {
        return "version: \(val)"
    }
}

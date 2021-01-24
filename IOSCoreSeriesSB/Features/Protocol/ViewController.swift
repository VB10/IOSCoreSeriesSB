//
//  ViewController.swift
//  IOSCoreSeriesSB
//
//  Created by 111542 on 1/24/21.
//

import UIKit

class ViewController: UIViewController, SampleProtocol {
    var userType: UserType? {
        get {return .ADMIN}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        changeUserTypeBackgroundColor()
    }
}

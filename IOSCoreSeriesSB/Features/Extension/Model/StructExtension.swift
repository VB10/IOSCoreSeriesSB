//
//  StructExtension.swift
//  IOSCoreSeriesSB
//
//  Created by 111542 on 1/31/21.
//

import Foundation

struct HelloModel {
    var name: String

}


extension HelloModel {
    
    func showName() {
        print(name)
    }
    
   mutating func changeName(val: String) {
        self.name = val
    }
}

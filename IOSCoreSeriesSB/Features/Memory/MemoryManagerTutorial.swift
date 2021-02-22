//
//  MemoryManagerTutorial.swift
//  IOSCoreSeriesSB
//
//  Created by 111542 on 2/22/21.
//

import Foundation

class UserSample {

    let name: String = "1"
    weak var type: UserTypeSample?
    
    var nameX: String {
        print("init")
        return name + "X"
    }
    
    lazy var names: String? = "names"
    
    lazy var nameX2: String = {
        print("init NAMEX")
        return name + "X"
    }()
    

    init(type: UserTypeSample? = nil) {
        self.type = type
    }

    deinit {
        print("User Deinit")
    }
    
    func call()  {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {[weak self] in
            guard let self = self else { return }
            print("XX \(self.names ?? "xXx")")
        }
    }
}


final class UserTypeSample {
    let typeName: String = "A"
   
    weak var user: UserSample?
//    unowned let user2: User = User()
    
    deinit {
        print("Type Deinit")
    }
}


struct Hello {
    
}

class Example {
    
    var user: UserSample? = UserSample()
    var type: UserTypeSample? = UserTypeSample()
    
    init() {
        
        user?.type = type
        type?.user = user
        user?.call()
        type = nil
        user = nil

    }
}




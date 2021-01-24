//
//  HelloProtocol.swift
//  IOSCoreSeriesSB
//
//  Created by 111542 on 1/24/21.
//

import Foundation
import UIKit

protocol HelloProtocol {

    associatedtype T

    func sayGenericParam()

    var array: [T] { get }

    var name: String {
        get
    }

    func sayHello(val: String)
    static var count: Int { get }
    init(name: String)
}


class FirstSwiftClass<T>: HelloProtocol {


    var array: [T] = []

    static var count: Int {
        get { return 5 }
    }

    func sayGenericParam() {
        print(T.self)
    }



    var name: String

    required init(name: String) {
        self.name = name
    }


    func sayHello(val: String) {
        print(val)
    }

}


class DummyFirstSwiftClass<T>: HelloProtocol {
    var name: String
    var array: [T] = []


    func sayHello(val: String) {

    }

    func sayGenericParam() {
        print(T.self)
    }


    static var count: Int {
        get { return 5 }
    }

    required init(name: String) {
        self.name = name
    }


}

extension HelloProtocol where T == Double {
    func sum() {

    }
}

class HelloViewCotnroller: FirstSwiftClass<Double> {


    func view() {
        sayGenericParam()

    }


}


class HelloViewCotnroller2: FirstSwiftClass<String> {


    func view() {
        sayGenericParam()


    }


}

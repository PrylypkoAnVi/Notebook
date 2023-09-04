//
//  Container.swift
//  Notebook
//
//  Created by Anastasiia Prylypko on 03.09.2023.
//

import Foundation
import XServiceLocator

//MARK: -
//MARK: Private Properties

private var container = Container()

//MARK: -
//MARK: Public Methods

public func resolve<T>(_ item: T.Type) -> T {
    guard let value = try? container.resolve(item) else {
        fatalError("Can't find \(item)")
    }
    return value
}

public func register<T>(_ instance: T, for type: T.Type) {
    container = container.register(type, instance: instance)
}

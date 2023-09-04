//
//  AppRouter.swift
//  Notebook
//
//  Created by Anastasiia Prylypko on 03.09.2023.
//

import UIKit

protocol Destination {
    var destination: UIViewController? { get }
}

protocol Router {
    var currentViewController: UIViewController? { get }
    
    @discardableResult
    func route(to: Destination) -> UIViewController?
}

class AppRouter: Router {

    //MARK: -
    //MARK: Public Properties
    
    public var currentViewController: UIViewController? {
        return navigationController.topViewController
    }
    
    //MARK: -
    //MARK: Private Properties
    
    private let navigationController: UINavigationController
    
    //MARK: -
    //MARK: Init
    
    init(window: UIWindow) {
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        self.navigationController = navigationController
        navigationController.navigationBar.isHidden = true
        window.makeKeyAndVisible()
    }
    
    //MARK: -
    //MARK: Public Methods
    
    @discardableResult
    public func route(to destination: Destination) -> UIViewController? {
        guard let newViewController = destination.destination else { return nil }
        show(viewController: newViewController)
        return newViewController
    }
    
    //MARK: -
    //MARK: Private Methods
    
    private func show(viewController contr: UIViewController, animated: Bool = true) {
        guard currentViewController != contr else { return }
        self.navigationController.pushViewController(contr, animated: animated)
        self.navigationController.setViewControllers([contr], animated: animated)
    }
    
}

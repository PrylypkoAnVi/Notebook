//
//  SceneDelegate.swift
//  Notebook
//
//  Created by Anastasiia Prylypko on 03.09.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene)
        else { return }

        let window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        self.window = window

        self.window?.windowScene = windowScene

        register(AppRouter(window: window), for: Router.self)

        let firstDestination = MainDestination()

        resolve(Router.self).route(to: firstDestination)
    }

}

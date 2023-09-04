//
//  MainDestination.swift
//  Notebook
//
//  Created by Anastasiia Prylypko on 04.09.2023.
//

import UIKit

struct MainDestination: Destination {

    var destination: UIViewController? {
        let contr = MainViewController(viewModel: MainViewModel())
        return contr
    }

}

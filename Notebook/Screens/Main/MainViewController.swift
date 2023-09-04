//
//  MainViewController.swift
//  Notebook
//
//  Created by Anastasiia Prylypko on 03.09.2023.
//

import UIKit
import RxSwift
import RxCocoa

class MainViewController: UIViewController {

    //MARK: -
    //MARK: Public Properties
    
    public var mainView: MainView? {
        return self.view as? MainView
    }
    
    //MARK: -
    //MARK: Internal Properties
    
    internal var viewModel: MainViewModelProtocol
    
    //MARK: -
    //MARK: Private Properties
    
    private var disposeBag = DisposeBag()

    //MARK: -
    //MARK: Init
    
    init(viewModel: MainViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        let codeView = MainView(frame: CGRect.zero)
        self.view = codeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

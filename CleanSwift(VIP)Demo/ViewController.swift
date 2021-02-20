//
//  ViewController.swift
//  CleanSwift(VIP)Demo
//
//  Created by Ratti on 20/02/21.
//

import UIKit

protocol ViewControllerProtocol {
    func didFetchData() -> Void
}

class ViewController: UIViewController, ViewControllerProtocol {
    var interactor: InteractorLogic?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setup()
        self.fetchData()
    }
    
    func setup() {
        let interactorObj = Interactor()
        let presenterObj = Presenter()
        presenterObj.viewController = self
        interactorObj.presenter = presenterObj
        self.interactor = interactorObj
    }
    
    func fetchData() {
        self.interactor?.processLogic()
    }
    
    func didFetchData() {
        print("yeee data processed")
    }
}


//
//  Presenter.swift
//  CleanSwift(VIP)Demo
//
//  Created by Ratti on 20/02/21.
//

import Foundation

protocol PresenterLogic {
    func presentLogic() -> Void
}

class Presenter: PresenterLogic{
    var viewController: ViewControllerProtocol?
    
    func presentLogic() {
        viewController?.didFetchData()
    }
}

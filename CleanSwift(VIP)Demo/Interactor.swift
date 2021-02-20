//
//  Interactor.swift
//  CleanSwift(VIP)Demo
//
//  Created by Ratti on 20/02/21.
//

import Foundation

protocol InteractorLogic {
    func processLogic() -> Void
}

class Interactor: InteractorLogic{
    var presenter: PresenterLogic?

    func processLogic() {
        presenter?.presentLogic()
    }
}

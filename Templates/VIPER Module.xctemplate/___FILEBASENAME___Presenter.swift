//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

final class ___VARIABLE_ModuleName___Presenter: ViewToPresenter___VARIABLE_ModuleName___Protocol {

    // MARK: Properties
    private let view: PresenterToView___VARIABLE_ModuleName___Protocol
    private let interactor: PresenterToInteractor___VARIABLE_ModuleName___Protocol
    private let router: PresenterToRouter___VARIABLE_ModuleName___Protocol


    init(interactor: PresenterToInteractor___VARIABLE_ModuleName___Protocol, router: PresenterToRouter___VARIABLE_ModuleName___Protocol, view: PresenterToView___VARIABLE_ModuleName___Protocol) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }
}

extension ___VARIABLE_ModuleName___Presenter: InteractorToPresenter___VARIABLE_ModuleName___Protocol {
    
}

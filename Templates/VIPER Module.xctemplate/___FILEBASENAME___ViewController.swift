//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

final class ___VARIABLE_ModuleName___ViewController: UIViewController, NavigationView {
    
    // MARK: - Properties
    var presenter: ViewToPresenter___VARIABLE_ModuleName___Protocol!

    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ___VARIABLE_ModuleName___View(self)
        view.backgroundColor = .white
    }
     
}

extension ___VARIABLE_ModuleName___ViewController: PresenterToView___VARIABLE_ModuleName___Protocol{
    // TODO: Implement View Output Methods
}

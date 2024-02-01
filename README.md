# VIPER Template
Xcode File Template for generating VIPER modules: View, Interactor, Presenter, and Router. Written in Swift 5

# How To Install
1. Clone the repository
2. Run the following command from the root folder:

> make install_templates

To uninstall Xcode template run:

> make uninstall_templates

===
# Installation instructions

To install VIPER Xcode templates clone this repo and run the following command from the root folder:

After that, restart your Xcode if it was already opened.
# Use
1. Open Xcode
2. ```File -> New -> File``` or ```⌘ N```
3. Scroll down till you see ```VIPER Module``` template and choose it.
4. Set a name for your module. Examples: ```Home, Auth, SignIn```

# Generated Code

Let's suppose we wanted to create the Auth module. Here's how it would look:

### Contract
```AuthContract.swift```
```swift
import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewAuthProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterAuthProtocol {
    
    var view: PresenterToViewAuthProtocol? { get set }
    var interactor: PresenterToInteractorAuthProtocol? { get set }
    var router: PresenterToRouterAuthProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorAuthProtocol {
    
    var presenter: InteractorToPresenterAuthProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterAuthProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterAuthProtocol {
    
}
```

### View
```AuthViewController.swift```
```swift
import UIKit

class AuthViewController: UIViewController {

    // MARK: - Properties
    var presenter: ViewToPresenterAuthProtocol?

    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension AuthViewController: PresenterToViewAuthProtocol{
    // TODO: Implement View Output Methods
}
```

### Interactor
```AuthInteractor.swift```
```swift
import Foundation

class AuthInteractor: PresenterToInteractorAuthProtocol {

    // MARK: Properties
    var presenter: InteractorToPresenterAuthProtocol?
}
```

### Presenter
```AuthPresenter.swift```

```swift
import Foundation

class AuthPresenter: ViewToPresenterAuthProtocol {

    // MARK: Properties
    var view: PresenterToViewAuthProtocol?
    var interactor: PresenterToInteractorAuthProtocol?
    var router: PresenterToRouterAuthProtocol?
}

extension AuthPresenter: InteractorToPresenterAuthProtocol {
    
}
```

### Router
```AuthRouter.swift```
```swift
import Foundation
import UIKit

class AuthRouter: PresenterToRouterAuthProtocol {

    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = AuthViewController()
        
        let presenter: ViewToPresenterQuotesProtocol & InteractorToPresenterQuotesProtocol = AuthPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = AuthRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = AuthInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
```

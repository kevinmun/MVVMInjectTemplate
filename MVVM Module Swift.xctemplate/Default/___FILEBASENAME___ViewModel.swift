//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

@objc protocol ___VARIABLE_moduleName___ViewModelProtocol: class {
    func dismissSelf()
    func notifyDismiss()
}

@objc protocol ___VARIABLE_moduleName___InterfaceProtocol: class {
    
    var viewModel: ___VARIABLE_moduleName___ViewModelProtocol!  { get set }
    
}

@objc class ___VARIABLE_moduleName___ViewModel: NSObject {

	weak fileprivate var interface: ___VARIABLE_moduleName___InterfaceProtocol?
    weak fileprivate var router: ___VARIABLE_moduleName___RouterInputProtocol?

    init(interface: ___VARIABLE_moduleName___InterfaceProtocol, router:___VARIABLE_moduleName___RouterInputProtocol) {
        self.interface = interface
        self.router = router
    }
    
}

extension ___VARIABLE_moduleName___ViewModel: ___VARIABLE_moduleName___ViewModelProtocol {
    func dismissSelf() {
        router?.dismiss()
    }

    func notifyDismiss() {
        router?.notifyDismiss()
    }
}

//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol ___VARIABLE_moduleName___RouterProtocol: class {
    var interface: ___VARIABLE_moduleName___InterfaceProtocol { get }
    var viewController: UIViewController? { get }
}

protocol ___VARIABLE_moduleName___RouterInputProtocol: class {

}

class ___VARIABLE_moduleName___Router: ___VARIABLE_moduleName___RouterProtocol {
	
    let interface: ___VARIABLE_moduleName___InterfaceProtocol
    weak private var presentationContext: ModalPresentationContext?
    var viewController: UIViewController? {
        get {
            return interface as? UIViewController
        } 
    }
    
    init(interface: ___VARIABLE_moduleName___InterfaceProtocol) {
        self.interface = interface
    }
    
    func start(withPresentationContext presentationContext: ModalPresentationContext) {
        self.presentationContext = presentationContext
        //display controller using presentation context
    }
    
}

extension ___VARIABLE_moduleName___Router: ___VARIABLE_moduleName___RouterInputProtocol {

}
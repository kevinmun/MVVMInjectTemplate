//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

@objc protocol ___VARIABLE_moduleName___RouterDelegate: class {
    func didDismiss___VARIABLE_moduleName___Flow(router: ___VARIABLE_moduleName___RouterProtocol)
}

@objc protocol ___VARIABLE_moduleName___RouterProtocol: class {
    var interface: ___VARIABLE_moduleName___InterfaceProtocol { get }
    var delegate: ___VARIABLE_moduleName___RouterDelegate? { get set }
    var viewController: UIViewController? { get }
}

@objc protocol ___VARIABLE_moduleName___RouterInputProtocol: class {
    func notifyDismiss()
    func dismiss()
}

@objc class ___VARIABLE_moduleName___Router: NSObject, ___VARIABLE_moduleName___RouterProtocol {
	
    let interface: ___VARIABLE_moduleName___InterfaceProtocol
    weak fileprivate var presentationContext: ModalPresentationContext?
    var viewController: UIViewController? {
        get {
            return interface as? UIViewController
        } 
    }
    weak var delegate: ___VARIABLE_moduleName___RouterDelegate?
    
    init(interface: ___VARIABLE_moduleName___InterfaceProtocol) {
        self.interface = interface
    }
    
    func start(withPresentationContext presentationContext: ModalPresentationContext) {
        self.presentationContext = presentationContext
        //display controller using presentation context
    }
    
}

extension ___VARIABLE_moduleName___Router: ___VARIABLE_moduleName___RouterInputProtocol {
    func notifyDismiss() {
        delegate?.didDismiss___VARIABLE_moduleName___Flow(router: self)
    }

    func dismiss() {
        viewController?.dismiss(animated: true, completion: nil)
    }
}
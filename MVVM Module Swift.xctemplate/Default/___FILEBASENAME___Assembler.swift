//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation
import Swinject

protocol ___FILEBASENAMEASIDENTIFIER___Protocol {
    func build(presentationContext: ModalPresentationContext) -> ___VARIABLE_moduleName___RouterProtocol
}

class ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___Protocol {
    
    private let assembler: Assembler
    
    init(parentAssembler: Assembler) {
        assembler = Assembler([___VARIABLE_moduleName___Container()], parent: parentAssembler)
    }

    func build(presentationContext: ModalPresentationContext) ->  ___VARIABLE_moduleName___RouterProtocol {
        return assembler.resolver.resolve(___VARIABLE_moduleName___RouterProtocol.self, argument: presentationContext)!
    }    
}

class ___VARIABLE_moduleName___Container: Assembly {
    
    func assemble(container: Container) {
        
        container.register(___VARIABLE_moduleName___RouterProtocol.self) { (r, presentationContext: ModalPresentationContext) in
            let controller = r.resolve(___VARIABLE_moduleName___InterfaceProtocol.self)!
            let router = ___VARIABLE_moduleName___Router(interface: (controller as ___VARIABLE_moduleName___InterfaceProtocol), presentationContext: presentationContext)
            let viewModel = r.resolve(___VARIABLE_moduleName___ViewModelProtocol.self, arguments: (controller as ___VARIABLE_moduleName___InterfaceProtocol), (router as ___VARIABLE_moduleName___RouterInputProtocol))!
            controller.viewModel = viewModel
            return ___VARIABLE_moduleName___Router(interface: (controller as ___VARIABLE_moduleName___InterfaceProtocol), presentationContext: presentationContext)
        }
        
        container.register(___VARIABLE_moduleName___ViewModelProtocol.self) { (r, interface: ___VARIABLE_moduleName___InterfaceProtocol, router: ___VARIABLE_moduleName___RouterInputProtocol) in
            return ___VARIABLE_moduleName___ViewModel(interface: interface, router: router)
        }
        
        container.register(___VARIABLE_moduleName___InterfaceProtocol.self) {  r in
            let controller = ___VARIABLE_moduleName___ViewController()          
            return controller
        }

    }
    
}
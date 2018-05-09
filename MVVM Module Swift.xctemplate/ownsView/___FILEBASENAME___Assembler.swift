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

class ___FILEBASENAMEASIDENTIFIER___ {
    
    private let assembler: Assembler
    
    init(parentAssembler: Assembler) {
        assembler = Assembler([___VARIABLE_moduleName___Container()], parent: parentAssembler)
    }
    
}

class ___VARIABLE_moduleName___Container: Assembly {
    
    func assemble(container: Container) {
        
        container.register(___VARIABLE_moduleName___RouterInputProtocol.self) { (r, parentRouter: ___VARIABLE_moduleName___ParentRouterProtocol) in
            ___VARIABLE_moduleName___Router(parentRouter: parentRouter)
        }
        
        container.register(___VARIABLE_moduleName___ViewModelProtocol.self) { (r, interface: ___VARIABLE_moduleName___InterfaceProtocol, parentRouter: ___VARIABLE_moduleName___ParentRouterProtocol) in
            let router = r.resolve(___VARIABLE_moduleName___RouterInputProtocol.self, argument: parentRouter)!
            return ___VARIABLE_moduleName___ViewModel(interface: interface, router: router)
        }
        
        container.register(___VARIABLE_moduleName___InterfaceProtocol.self) {  (r, parentRouter: ___VARIABLE_moduleName___ParentRouterProtocol) in
            let controller = ___VARIABLE_moduleName___ViewController()
            let viewModel = r.resolve(___VARIABLE_moduleName___ViewModelProtocol.self, argument: (controller as ___VARIABLE_moduleName___InterfaceProtocol))!
            controller.viewModel = viewModel
            
            return controller
        }

    }
    
}
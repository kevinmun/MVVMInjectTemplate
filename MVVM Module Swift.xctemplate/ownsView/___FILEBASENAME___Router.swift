//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol ___VARIABLE_moduleName___RouterInputProtocol: class {
    
}

protocol ___VARIABLE_moduleName___ParentRouterProtocol: class {
    
}

class ___VARIABLE_moduleName___Router: ___VARIABLE_moduleName___RouterInputProtocol {
	
    private unowned let parentRouter: ___VARIABLE_moduleName___ParentRouterProtocol
    
    init(parentRouter: ___VARIABLE_moduleName___ParentRouterProtocol) {
        self.parentRouter = parentRouter
    }
    
}
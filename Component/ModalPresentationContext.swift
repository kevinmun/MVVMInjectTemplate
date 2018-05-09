//
//  ModalPresentationContext.swift
//  Coins
//
//  Created by Kevin Mun on 09/05/18.
//  Copyright © 2018 Global Commerce Technologies Pte. All rights reserved.
//

import Foundation

@objc protocol ModalPresentationContext {
    
    func present(_ controller: UIViewController, animated: Bool, completion: (() -> Void)?)
    func presentOverTop(_ controller: UIViewController, animated: Bool, completion: (() -> Void)?)
    func dismiss(animated flag: Bool, completion: (() -> Swift.Void)?)
    func view() -> UIView
    func rootViewController() -> UIViewController?
}

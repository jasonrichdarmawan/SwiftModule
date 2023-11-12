//
//  Module.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 12/11/23.
//

import SwiftUI

struct Module {
    let initialPath: String
    let routes: Routes
}

enum ModuleError: Error {
    case routeNotFound
    case badRoute(_ message: String)
}

extension Module {
    func loadInitialPath() -> Result<UIViewController, ModuleError> {
        guard let route = routes.first(where: { route in
            route.path == initialPath
        })
        else {
            printIfDebug("\(type(of: self)) \(#function) error: route not found.")
            return .failure(.routeNotFound)
        }
        
        guard let loadComponent = route.loadComponent
        else {
            printIfDebug("\(type(of: self)) \(#function) error: expect loadComponent is not nil.")
            return .failure(.badRoute("expect loadComponent is not nil."))
        }
        
        let component = loadComponent()
        
        let rootView = AnyView(component)
        
        let viewController = UIHostingController(rootView: rootView)
        
        return .success(viewController)
    }
}

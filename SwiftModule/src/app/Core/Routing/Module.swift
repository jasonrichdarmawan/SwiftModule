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

extension Module {
    func loadInitialPath() -> UIViewController? {
        guard let route = routes.first(where: { route in
            route.path == initialPath
        })
        else {
            printIfDebug("\(type(of: self)) \(#function) // TODO: return error: route not found")
            return nil
        }
        
        guard let loadComponent = route.loadComponent
        else {
            printIfDebug("\(type(of: self)) \(#function) // TODO: return error: expect loadComponent is not nil")
            return nil
        }
        
        let component = loadComponent()
        
        let rootView = AnyView(component)
        
        let viewController = UIHostingController(rootView: rootView)
        
        return viewController
    }
}

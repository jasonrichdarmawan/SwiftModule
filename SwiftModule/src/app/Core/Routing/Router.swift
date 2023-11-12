//
//  Router.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 12/11/23.
//

import SwiftUI

final class Router {
    /**
     - Parameters:
        - path possible values:
            - ""
            - "app1"
            - "app1/firstPage"
            - "app2"
            - "app2/firstPage"
     - TODO: recursive function to handle more than 2 nested routes i.e. "app1/feature1/firstPage"
     - TODO: push / modal transition.
     */
    static func route(path: String) {
        if path.isEmpty { return }
        
        let subsequences = path.split(separator: "/")
        
        guard let subsequence = subsequences.first
        else {
            printIfDebug("\(type(of: self)) \(#function) // TODO: return error: unexpected error.")
            return
        }
        
        guard let route = appRoutes.first(
            where: { route in
                route.path == subsequence
            }
        )
        else {
            printIfDebug("\(type(of: self)) \(#function) // TODO: return error: route not found.")
            return
        }
        
        // loadComponent
        if subsequences.count == 1 {
            guard let loadComponent = route.loadComponent
            else {
                printIfDebug("\(type(of: self)) \(#function) // TODO: return error: expect loadComponent is not nil.")
                return
            }
            
            let component = loadComponent()
            
            let rootView = AnyView(component)
            
            let viewController = UIHostingController(rootView: rootView)
            
            navigationController.pushViewController(viewController, animated: true)
            
            printIfDebug("\(type(of: self)) \(#function) // TODO: return success.")
            return
        }
        
        // loadChildren
        guard let loadChildren = route.loadChildren
        else {
            printIfDebug("\(type(of: self)) \(#function) // TODO: return error: expect loadChildren is not nil.")
            return
        }
        
        let module = loadChildren()
        
        guard let moduleRoute = module.routes.first(where: { route in
            route.path == subsequences[1]
        })
        else {
            printIfDebug("\(type(of: self)) \(#function) // TODO: return error: route not found.")
            return
        }
        
        // loadComponent
        guard let moduleLoadComponent = moduleRoute.loadComponent
        else {
            printIfDebug("\(type(of: self)) \(#function) // TODO: return error: expect loadComponent is not nil.")
            return
        }
        
        let moduleComponent = moduleLoadComponent()
        
        let rootView = AnyView(moduleComponent)
        
        let viewController = UIHostingController(rootView: rootView)
        
        navigationController.pushViewController(viewController, animated: true)
        
        printIfDebug("// TODO: return success")
        return
    }
}

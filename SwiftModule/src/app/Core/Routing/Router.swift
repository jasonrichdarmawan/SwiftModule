//
//  Router.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 12/11/23.
//

import SwiftUI

enum RouteError: Error {
    case badPath(_ message: String)
    case unexpectedError(_ message: String)
    case routeNotFound
    case badRoute(_ message: String)
}

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
    static func route(path: String) -> Result<Bool, RouteError> {
        if path.isEmpty {
            printIfDebug("\(type(of: self)) \(#function) error: path is empty")
            return .failure(.badPath("path is empty"))
        }
        
        let subsequences = path.split(separator: "/")
        
        guard let subsequence = subsequences.first
        else {
            printIfDebug("\(type(of: self)) \(#function) unexpected error: path is empty")
            return .failure(.unexpectedError("path is empty"))
        }
        
        guard let route = appRoutes.first(
            where: { route in
                route.path == subsequence
            }
        )
        else {
            return .failure(.routeNotFound)
        }
        
        // loadComponent
        if subsequences.count == 1 {
            guard let loadComponent = route.loadComponent
            else {
                printIfDebug("\(type(of: self)) \(#function) error: expect loadComponent is not nil.")
                return .failure(.badRoute("expect loadComponent is not nil."))
            }
            
            let component = loadComponent()
            
            let rootView = AnyView(component)
            
            let viewController = UIHostingController(rootView: rootView)
            
            navigationController.pushViewController(viewController, animated: true)
            
            printIfDebug("\(type(of: self)) \(#function) success")
            return .success(true)
        }
        
        // loadChildren
        guard let loadChildren = route.loadChildren
        else {
            printIfDebug("\(type(of: self)) \(#function) error: expect loadChildren is not nil.")
            return .failure(.badRoute("expect loadChildren is not nil."))
        }
        
        let module = loadChildren()
        
        guard let moduleRoute = module.routes.first(where: { route in
            route.path == subsequences[1]
        })
        else {
            printIfDebug("\(type(of: self)) \(#function) error: route not found.")
            return .failure(.routeNotFound)
        }
        
        // loadComponent
        guard let moduleLoadComponent = moduleRoute.loadComponent
        else {
            printIfDebug("\(type(of: self)) \(#function) error: expect loadComponent is not nil.")
            return .failure(.badRoute("expect loadComponent is not nil."))
        }
        
        let moduleComponent = moduleLoadComponent()
        
        let rootView = AnyView(moduleComponent)
        
        let viewController = UIHostingController(rootView: rootView)
        
        navigationController.pushViewController(viewController, animated: true)
        
        printIfDebug("\(type(of: self)) \(#function) success")
        return .success(true)
    }
}

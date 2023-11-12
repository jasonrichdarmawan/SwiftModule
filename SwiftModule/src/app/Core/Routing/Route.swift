//
//  Route.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import Foundation

struct Route {
    var path: String
    /**
     - TODO: loadComponent accept parameters.
     ```
     Route(
         path: "firstPage/:id",
         loadComponent: { params in
             return App1FirstPage(
                 viewModel: App1FirstViewModel(
                     id: params.id
                 )
             )
         }
     )
     ```
     */
    var loadComponent: (() -> any Component)?
    /**
     - TODO: loadChildren accept parameters
     */
    var loadChildren: (() -> Module)?
}

typealias Routes = [Route]

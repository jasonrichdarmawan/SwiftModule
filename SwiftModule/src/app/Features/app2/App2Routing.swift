//
//  App2Routing.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import Foundation

let app2Routes: Routes = [
    Route(
        path: "firstPage",
        loadComponent: {
            return App2FirstPage(viewModel: App2FirstViewModel())
        }
    ),
    Route(
        path: "secondPage",
        loadComponent: {
            return App2SecondPage(viewModel: App2SecondViewModel())
        }
    )
]

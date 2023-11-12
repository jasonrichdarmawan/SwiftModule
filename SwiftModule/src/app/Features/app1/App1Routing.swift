//
//  App1Routing.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import Foundation

let app1Routes: Routes = [
    Route(
        path: "firstPage",
        loadComponent: {
            return App1FirstPage(
                viewModel: App1FirstViewModel()
            )
        }
    ),
    Route(
        path: "secondPage",
        loadComponent: {
            return App1SecondPage(
                viewModel: App1SecondViewModel()
            )
        }
    )
]

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
                appViewModel: AppViewModel.shared(),
                viewModel: App1FirstViewModel.shared(
                    counter: 3
                )
            )
        }
    ),
    Route(
        path: "secondPage",
        loadComponent: {
            return App1SecondPage(
                viewModel: App1SecondViewModel.shared()
            )
        }
    )
]

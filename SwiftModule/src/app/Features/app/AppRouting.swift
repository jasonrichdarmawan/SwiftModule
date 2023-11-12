//
//  AppRouting.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import Foundation

let appRoutes: Routes = [
    Route(
        path: "",
        loadComponent: {
            return AppPage(viewModel: AppViewModel())
        }
    ),
    Route(
        path: "app1",
        loadChildren: {
            return app1Module
        }
    ),
    Route(
        path: "app2",
        loadChildren: {
            return app2Module
        }
    )
]

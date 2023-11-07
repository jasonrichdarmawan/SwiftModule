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
        component: App1FirstPage.self
    ),
    Route(
        path: "secondPage",
        component: App1SecondPage.self
    )
]

//
//  Route.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import Foundation

struct Route {
    var path: String
    var component: (any Component.Type)?
}

typealias Routes = [Route]

//
//  printIfDebug.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import Foundation

func printIfDebug<T>(instanceType: T, functionName: any ExpressibleByStringLiteral, id: UUID) {
    #if DEBUG
    print("\(type(of: instanceType)) \(functionName) \(id)")
    #endif
}

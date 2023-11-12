//
//  printIfDebug.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import Foundation

func printIfDebug(
    _ items: Any...,
    separator: String = " ",
    terminator: String = "\n"
) {
    #if DEBUG
    print(items, separator: separator, terminator: terminator)
    #endif
}

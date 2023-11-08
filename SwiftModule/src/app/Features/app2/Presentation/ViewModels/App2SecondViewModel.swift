//
//  App2SecondViewModel.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import Foundation

final class App2SecondViewModel: ObservableObject {
    private let id: UUID
    
    init(
    ) {
        self.id = UUID()
        printIfDebug(instanceType: self, functionName: #function, id: id)
    }
    
    deinit {
        printIfDebug(instanceType: self, functionName: #function, id: id)
    }
}

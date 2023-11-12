//
//  App1SecondViewModel.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import Foundation

final class App1SecondViewModel: ObservableObject {
    private let id: UUID
    
    init(
    ) {
        self.id = UUID()
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
    
    deinit {
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
}

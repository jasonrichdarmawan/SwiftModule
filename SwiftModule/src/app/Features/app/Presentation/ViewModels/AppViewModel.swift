//
//  AppViewModel.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import Foundation

final class AppViewModel: ObservableObject {
    private let id: UUID
    
    init(
    ) {
        self.id = UUID()
        print("\(type(of: self)) \(#function) \(id)")
    }
    
    deinit {
        print("\(type(of: self)) \(#function) \(id)")
    }
}

//
//  AppViewModel.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import Foundation

final class AppViewModel: ObservableObject {
    private let id: UUID
    
    @Published var counter: Int
    
    init(
        id: UUID = UUID(),
        counter: Int = 0
    ) {
        self.id = id
        self.counter = counter
        print("\(type(of: self)) \(#function) \(id)")
    }
    
    deinit {
        print("\(type(of: self)) \(#function) \(id)")
    }
}

extension AppViewModel {
    static func shared(counter: Int = 0) -> AppViewModel {
        var temp: AppViewModel
        
        if _shared == nil {
            temp = AppViewModel(counter: counter)
            _shared = temp
        }
        
        return _shared!
    }
    
    private static weak var _shared: AppViewModel?
}

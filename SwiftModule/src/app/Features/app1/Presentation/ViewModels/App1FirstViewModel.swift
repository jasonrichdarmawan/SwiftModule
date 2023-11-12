//
//  App1ViewModel.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import Foundation

final class App1FirstViewModel: ObservableObject {
    private let id: UUID
    
    @Published var counter: Int
    
    init(
        id: UUID = UUID(),
        counter: Int = 0
    ) {
        self.id = id
        self.counter = counter
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
    
    deinit {
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
}

extension App1FirstViewModel {
    static func shared(counter: Int = 0) -> App1FirstViewModel {
        var temp: App1FirstViewModel
        
        if _shared == nil {
            temp = App1FirstViewModel(
                counter: counter
            )
            _shared = temp
        }
        
        return _shared!
    }
    
    private static weak var _shared: App1FirstViewModel?
}

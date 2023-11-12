//
//  App2FirstViewModel.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import Foundation

final class App2FirstViewModel: ObservableObject {
    private let id: UUID
    
    init(
        id: UUID = UUID()
    ) {
        self.id = id
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
    
    deinit {
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
}


extension App2FirstViewModel {
    static func shared() -> App2FirstViewModel {
        var temp: App2FirstViewModel
        
        if _shared == nil {
            temp = App2FirstViewModel()
            _shared = temp
        }
        
        return _shared!
    }
    
    private static weak var _shared: App2FirstViewModel?
}

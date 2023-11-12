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
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
    
    deinit {
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
}

extension App2SecondViewModel {
    static func shared() -> App2SecondViewModel {
        var temp: App2SecondViewModel
        
        if _shared == nil {
            temp = App2SecondViewModel()
            _shared = temp
        }
        
        return _shared!
    }
    
    private static weak var _shared: App2SecondViewModel?
}

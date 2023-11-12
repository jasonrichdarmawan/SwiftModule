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
        id: UUID = UUID()
    ) {
        self.id = id
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
    
    deinit {
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
}

extension App1SecondViewModel {
    static func shared() -> App1SecondViewModel {
        var temp: App1SecondViewModel
        
        if _shared == nil {
            temp = App1SecondViewModel()
            _shared = temp
        }
        
        return _shared!
    }
    
    private static weak var _shared: App1SecondViewModel?
}

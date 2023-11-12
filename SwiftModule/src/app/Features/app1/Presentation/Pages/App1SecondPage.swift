//
//  App1SecondPage.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import SwiftUI

struct App1SecondPage: Component {
    private let id: UUID
    @ObservedObject var viewModel: App1SecondViewModel
    
    init(
        id: UUID = UUID(),
        viewModel: App1SecondViewModel
    ) {
        self.id = id
        self.viewModel = viewModel
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("App1SecondPage works!")
                Spacer()
            }
            
            HStack {
                Button {
                    _ = Router.route(path: "app2/firstPage")
                } label: {
                    Text("Go to App2FirstPage")
                }
                Spacer()
            }
            
            Spacer()
        }
    }
}

//
//  App2SecondPage.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import SwiftUI

struct App2SecondPage: Component {
    private let id: UUID
    @ObservedObject var viewModel: App2SecondViewModel
    
    init(
        id: UUID = UUID(),
        viewModel: App2SecondViewModel
    ) {
        self.id = id
        self.viewModel = viewModel
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("App2SecondPage works!")
                Spacer()
            }
            
            HStack {
                Button {
                    _ = Router.route(path: "app1/firstPage")
                } label: {
                    Text("Go to App1FirstPage")
                }
                Spacer()
            }
            
            Spacer()
        }
    }
}

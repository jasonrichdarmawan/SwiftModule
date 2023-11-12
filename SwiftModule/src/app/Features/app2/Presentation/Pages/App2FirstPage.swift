//
//  App2FirstPage.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import SwiftUI

struct App2FirstPage: Component {
    private let id: UUID
    @ObservedObject var viewModel: App2FirstViewModel
    
    init(
        id: UUID = UUID(),
        viewModel: App2FirstViewModel
    ) {
        self.id = id
        self.viewModel = viewModel
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("App2FirstPage works!")
                Spacer()
            }
            
            HStack {
                Button {
                    _ = Router.route(path: "app2/secondPage")
                } label: {
                    Text("Go to App2SecondPage")
                }
                Spacer()
            }
            
            Spacer()
        }
    }
}

#Preview {
    App2FirstPage(viewModel: App2FirstViewModel())
}

//
//  AppPage.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import SwiftUI

struct AppPage: Component {
    private let id: UUID
    @ObservedObject var viewModel: AppViewModel
    
    init(
        id: UUID = UUID(),
        viewModel: AppViewModel
    ) {
        self.id = id
        self.viewModel = viewModel
        printIfDebug("\(type(of: self)) \(#function) \(id)")
    }
    
    var body: some View {
        VStack(
            spacing: 0
        ) {
            HStack(
                spacing: 0
            ) {
                Text("AppView works!")
                Spacer()
            }
            
            HStack(
                spacing: 0
            ) {
                Button {
                    _ = Router.route(path: "app1/firstPage")
                } label: {
                    Text("Go to App1FirstPage")
                }
                Spacer()
            }
            
            VStack(
                spacing: 0
            ) {
                Text("AppPage counter")
                CounterComponent(counter: $viewModel.counter)
            }
            .padding(.all, 16)
            .border(.primary)
            
            Spacer()
        }
    }
}

#Preview {
    AppPage(
        viewModel: AppViewModel.shared(
            counter: 2
        )
    )
}

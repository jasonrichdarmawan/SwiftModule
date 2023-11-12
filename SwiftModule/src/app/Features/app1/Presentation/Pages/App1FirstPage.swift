//
//  App1FirstPage.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import SwiftUI

struct App1FirstPage: Component {
    @ObservedObject var appViewModel: AppViewModel
    @ObservedObject var viewModel: App1FirstViewModel
    
    init(
        id: UUID = UUID(),
        appViewModel: AppViewModel,
        viewModel: App1FirstViewModel
    ) {
        self.appViewModel = appViewModel
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
                Text("App1FirstPage works!")
                Spacer()
            }
            
            HStack(
                spacing: 0
            ) {
                Button {
                    _ = Router.route(path: "app1/secondPage")
                } label: {
                    Text("Go to App1SecondPage")
                }
                Spacer()
            }
            
            VStack(
                spacing: 0
            ) {
                Text("AppPage counter")
                CounterComponent(
                    counter: $appViewModel.counter
                )
            }
            .padding(.all, 16)
            .border(.primary)
            
            VStack(
                spacing: 0
            ) {
                Text("App1FirstPage counter")
                CounterComponent(
                    counter: $viewModel.counter
                )
            }
            .padding(.all, 16)
            .border(.primary)
            
            Spacer()
        }
    }
}

#Preview {
    App1FirstPage(
        appViewModel: AppViewModel.shared(),
        viewModel: App1FirstViewModel.shared(counter: 3)
    )
}

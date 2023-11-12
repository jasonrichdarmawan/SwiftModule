//
//  AppPage.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import SwiftUI

struct AppPage: Component {
    @ObservedObject var viewModel: AppViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("AppView works!")
                Spacer()
            }
            HStack {
                Button {
                    Router.route(path: "app1/firstPage")
                } label: {
                    Text("Go to App1FirstPage")
                }
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    AppPage(viewModel: AppViewModel())
}

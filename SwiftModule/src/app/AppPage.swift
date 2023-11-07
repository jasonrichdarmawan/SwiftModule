//
//  AppPage.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import SwiftUI

struct AppPage: Component {
    @ObservedObject var viewModel: AppViewModel
    
    static func createInstance() -> AppPage {
        return AppPage(viewModel: AppViewModel())
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("AppView works!")
                Spacer()
            }
            HStack {
                Button {
                    
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

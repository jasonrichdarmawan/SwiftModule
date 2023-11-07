//
//  App1FirstPage.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import SwiftUI

struct App1FirstPage: Component {
    @ObservedObject var viewModel: App1FirstViewModel
    
    static func createInstance() -> App1FirstPage {
        return App1FirstPage(viewModel: App1FirstViewModel())
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("App1FirstPage works!")
                Spacer()
            }
            
            HStack {
                Button {
                    
                } label: {
                    Text("Go to App1SecondPage")
                }
                Spacer()
            }
            
            Spacer()
        }
    }
}

#Preview {
    App1FirstPage(viewModel: App1FirstViewModel())
}

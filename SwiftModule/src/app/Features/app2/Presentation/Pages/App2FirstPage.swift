//
//  App2FirstPage.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import SwiftUI

struct App2FirstPage: Component {
    @ObservedObject var viewModel: App2FirstViewModel
    
    static func createInstance() -> App2FirstPage {
        return App2FirstPage(viewModel: App2FirstViewModel())
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("App2FirstPage works!")
                Spacer()
            }
            
            HStack {
                Button {
                    
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

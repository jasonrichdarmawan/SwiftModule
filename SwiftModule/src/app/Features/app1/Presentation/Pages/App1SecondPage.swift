//
//  App1SecondPage.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import SwiftUI

struct App1SecondPage: Component {
    @ObservedObject var viewModel: App1SecondViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("App1SecondPage works!")
                Spacer()
            }
            
            HStack {
                Button {
                    Router.route(path: "app2/firstPage")
                } label: {
                    Text("Go to App2FirstPage")
                }
                Spacer()
            }
            
            Spacer()
        }
    }
}

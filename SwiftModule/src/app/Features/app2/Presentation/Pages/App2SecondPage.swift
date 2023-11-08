//
//  App2SecondPage.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import SwiftUI

struct App2SecondPage: Component {
    @ObservedObject var viewModel: App2SecondViewModel
    
    static func createInstance() -> App2SecondPage {
        App2SecondPage(viewModel: App2SecondViewModel())
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

//
//  App1SecondPage.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 08/11/23.
//

import SwiftUI

struct App1SecondPage: Component {
    @ObservedObject var viewModel: App1SecondViewModel
    
    static func createInstance() -> App1SecondPage {
        App1SecondPage(viewModel: App1SecondViewModel())
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

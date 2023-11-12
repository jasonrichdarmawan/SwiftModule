//
//  CounterComponent.swift
//  SwiftModule
//
//  Created by Jason Rich Darmawan Onggo Putra on 12/11/23.
//

import SwiftUI

struct CounterComponent: View {
    @Binding var counter: Int
    
    var body: some View {
        HStack(
            spacing: 16
        ) {
            Button {
                counter -= 1
            } label: {
                Image(systemName: "minus.square")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            Text("count: \(counter)")
            Button {
                counter += 1
            } label: {
                Image(systemName: "plus.square")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
        }
    }
}

#Preview {
    struct Container: View {
        @State var counter = 0
        
        var body: some View {
            CounterComponent(counter: $counter)
        }
    }
    
    return Container()
}

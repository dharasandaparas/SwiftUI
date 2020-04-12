//
//  ContentView.swift
//  PresentDismissViewDemo
//
//  Created by Akash Padhiyar on 11/04/20.
//  Copyright © 2020 Akash Padhiyar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showsecondView: Bool = false
    
    var body: some View {
        ZStack {
            Button(action: {
                self.showsecondView.toggle()
            }) {
                Text("firstView")
            }
            if self.showsecondView {
                SecondView(showsecondView: self.$showsecondView)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red)
                    .animation(.easeInOut)
                    .transition(.move(edge: .bottom))
                    .edgesIgnoringSafeArea(.all)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct SecondView: View {
    @Binding var showsecondView: Bool
      
    var body: some View {
        VStack {
            Button(action: {
                self.showsecondView = false
            }) {
                Text("dismiss")
            }
            .padding(10)
              
            Text("secondView")
        }
    }
}

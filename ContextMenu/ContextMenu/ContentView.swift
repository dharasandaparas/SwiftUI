//
//  ContentView.swift
//  ContextMenu
//
//  Created by Akash Padhiyar on 18/04/20.
//  Copyright © 2020 Akash Padhiyar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("city")
        .clipShape(Circle())
        
        .contextMenu{
            Button(action: {
                
            }) {
                Text("Delete")
                Image(systemName: "trash")
            }
            
            Button(action: {
                
            }) {
                Text("Add")
                Image(systemName: "plus")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

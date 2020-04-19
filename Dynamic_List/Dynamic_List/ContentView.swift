//
//  ContentView.swift
//  Dynamic_List
//
//  Created by Akash Padhiyar on 18/04/20.
//  Copyright © 2020 Akash Padhiyar. All rights reserved.
//

import SwiftUI

struct AppleDevice:Identifiable {
    let id:Int
    let name:String
    let type:String
    let color:Color
}


struct ContentView: View {
    @State var DeviceList = [
        AppleDevice(id:1, name: "iPhone", type: "iPhone SE", color: .red),
        AppleDevice(id:2, name: "iPad", type: "iPad pro 2020", color: .green),
        AppleDevice(id:3, name: "iWatch", type: "Watch series 6", color: .blue),
        AppleDevice(id:4, name: "AppleTV", type: "Apple TV 4K", color: .orange)
        
    ]
    var body: some View {
        /*List{
            HStack{
                Text("iPhone")
                Text("iPhone SE").foregroundColor(.red)
            }
            HStack{
                Text("iPad")
                Text("iPad pro 2020").foregroundColor(.green)
            }
            HStack{
                Text("iWatch")
                Text("Watch series 6").foregroundColor(.blue)
            }
            HStack{
                Text("AppleTV")
                Text("Apple TV 4K").foregroundColor(.orange)
            }
        }*/
       
        
        /*List(DeviceList, id: \.name){ pokemon in
            HStack{
                Text(pokemon.name)
                Text(pokemon.type).foregroundColor(pokemon.color)
            }
            
        }*/
        
       /* List(DeviceList){ pokemon in
            HStack{
                Text(pokemon.name)
                Text(pokemon.type).foregroundColor(pokemon.color)
            }
            
        }*/
        NavigationView{
            List(DeviceList){ pokemon in
                HStack{
                    Text(pokemon.name)
                    Text(pokemon.type).foregroundColor(pokemon.color)
                }
            }.navigationBarTitle(Text("Apple Device"))
            .navigationBarItems(trailing: Button(action: AddDevice, label: { Text("Add") }))
        }
    }
    
     func AddDevice(){
        if let randomDevice = DeviceList.randomElement() {
          DeviceList.append(randomDevice)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

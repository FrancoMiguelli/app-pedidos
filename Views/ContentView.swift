//
//  ContentView.swift
//  otonelsu
//
//  Created by Midas Tecnologia on 03/11/19.
//  Copyright © 2019 Midas Tecnologia. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView  {
                ListRequests()
                .tabItem {
                    Text("ABERTOS")
            }
                NewRequest()
                .tabItem {
                        Text("NOVO PEDIDO")
                }
            Text("Segundo")
                .tabItem {
                        Text("FINALIZADOS")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}







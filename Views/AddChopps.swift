//
//  AddChopps.swift
//  otonelsu
//
//  Created by Midas Tecnologia on 06/11/19.
//  Copyright © 2019 Midas Tecnologia. All rights reserved.
//

import SwiftUI

struct AddChopps: View {
    
    @State private var paleAle500 = 0
    @State private var IPA500 = 0
    @State private var pilsen500 = 0
    @State private var weiss500 = 0
    @State private var redAle500 = 0
    
    var api = API()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack(alignment: .center, spacing: 10){
                
               Text("PALE ALE 500ml")
                    .padding(.leading)
                Button(action: {
                    if self.paleAle500 > 0 {
                        self.paleAle500 -= 1
                        
                    }
                    
                    }) {
                       Image(systemName: "minus.circle")
                    }
                .padding(.leading, 158)
                
                Text("\(paleAle500)")
                    .font(.system(size: 40))
                
                Button(action: {
                    self.paleAle500 += 1
                    
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
                
                
            }
            Divider()
            HStack(alignment: .center, spacing: 10){
                
               Text("IPA 500ml")
                    .padding(.leading)
                Button(action: {
                    if self.IPA500 > 0 {
                    self.IPA500 -= 1
                    
                    }
                    }) {
                       Image(systemName: "minus.circle")
                    }
                 .padding(.leading, 204)
                
                Text("\(IPA500)")
                    .font(.system(size: 40))
                    
                
                Button(action: {
                    self.IPA500 += 1
                    
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
            }
            Divider()
            HStack(alignment: .center, spacing: 10){
                
               Text("PILSEN 500ml")
                    .padding(.leading)
                Button(action: {
                    if self.pilsen500 > 0 {
                        self.pilsen500 -= 1
                    
                    }
                    }) {
                       Image(systemName: "minus.circle")
                    }
                 .padding(.leading, 173)
                
                Text("\(pilsen500)")
                    .font(.system(size: 40))
                
                Button(action: {
                    self.pilsen500 += 1
                    
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
            }
            Divider()
            HStack(alignment: .center, spacing: 10){
                           
                  Text("WEISS 500ml")
                       .padding(.leading)
                   Button(action: {
                       if self.weiss500 > 0 {
                           self.weiss500 -= 1
                          
                       }
                       
                       }) {
                          Image(systemName: "minus.circle")
                       }
                   .padding(.leading, 180)
                   
                   Text("\(weiss500)")
                       .font(.system(size: 40))
                   
                   Button(action: {
                       self.weiss500 += 1
                       
                       }) {
                           Image(systemName: "plus.circle.fill")
                       }
                   
                   
               }
            Divider()
            HStack(alignment: .center, spacing: 10){
                   
                  Text("RED ALE 500ml")
                       .padding(.leading)
                   Button(action: {
                       if self.redAle500 > 0 {
                           self.redAle500 -= 1
                           
                       }
                       
                       }) {
                          Image(systemName: "minus.circle")
                       }
                   .padding(.leading, 165)
                   
                   Text("\(redAle500)")
                       .font(.system(size: 40))
                   
                   Button(action: {
                       self.redAle500 += 1
                       }) {
                           Image(systemName: "plus.circle.fill")
                       }
                   
                   }
            Button(action: {
                self.api.saveData(collection: "Requests", document: "Chopps", datas: ["paleAle500" : self.paleAle500])
            }) {
                Text("Enviar")
            }
        }
    }
}

struct AddChopps_Previews: PreviewProvider {
    static var previews: some View {
        AddChopps()
    }
}

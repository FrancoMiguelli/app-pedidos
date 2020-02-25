//
//  NewRequest.swift
//  otonelsu
//
//  Created by Midas Tecnologia on 06/11/19.
//  Copyright © 2019 Midas Tecnologia. All rights reserved.
//

import SwiftUI

struct NewRequest: View {
    
    @State private var showChoppView = false
    @State private var showBeerView = false
    @State private var showBurgerView = false
    
    var body: some View {
        VStack{
            
            Text("Bebidas")
                .font(.system(size: 25))
                .fontWeight(.bold)
                .padding(.top)
            Divider()
            ScrollView(.horizontal) {
                HStack(alignment: .center, spacing: 10){
                    ZStack{
                        Image("choop")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .cornerRadius(10)
                         Button(action: {
                            self.showChoppView.toggle()
                                print("Fui pro CHOPPS")
                           }){
                               Text("CHOPPS")
                                    .foregroundColor(.black)
                                    .fontWeight(.heavy)
                                    .font(.system(size: 20))
                           }.sheet(isPresented: $showChoppView){
                               AddChopps()
                           }
                    }
                    ZStack{
                        Image("cervejas")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .cornerRadius(10)
                        Button(action: {
                           self.showBeerView.toggle()
                               print("Fui pro CERVEJAS")
                          }){
                              Text("CERVEJAS")
                                .foregroundColor(.black)
                                .fontWeight(.heavy)
                                .font(.system(size: 20))
                          }.sheet(isPresented: $showBeerView){
                              AddBeers()
                          }
                    }
                    
                  ZStack{
                        Image("coqueteis")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .cornerRadius(10)
                    Text("DRINKS")
                        .foregroundColor(.black)
                        .fontWeight(.heavy)
                        .font(.system(size: 20))
                    }
                    
                    VStack{
                        Image("chopp-artesanal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .cornerRadius(10)
                    Text("REFRIS")
                    }
                    
                }
            }
            
            
            Text("Comidas")
                .font(.system(size:25))
                .fontWeight(.bold)
                .padding(.top)
            Divider()
            ScrollView(.horizontal) {
                   HStack(alignment: .center, spacing: 10){
                        ZStack{
                            Image("burguer")
                              .resizable()
                              .aspectRatio(contentMode: .fit)
                              .frame(width: 150, height: 150)
                              .cornerRadius(10)
                            
                            Button(action: {
                               self.showBurgerView.toggle()
                                   print("Fui pros Burgers")
                              }){
                                  Text("BURGERS")
                                       .foregroundColor(.black)
                                       .fontWeight(.heavy)
                                       .font(.system(size: 20))
                              }.sheet(isPresented: $showBurgerView){
                                  addBurger()
                              }
                        }
                           
                       ZStack{
                            Image("fries")
                             .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150, height: 150)
                                .cornerRadius(10)
                            Text("PORÇOES")
                                .foregroundColor(.black)
                                .fontWeight(.heavy)
                                .font(.system(size: 20))
                        }
                       
                      ZStack{
                            Image("ribs")
                             .resizable()
                             .aspectRatio(contentMode: .fit)
                             .frame(width: 150, height: 150)
                             .cornerRadius(10)
                            Text("PRATOS")
                                .foregroundColor(.black)
                                .fontWeight(.heavy)
                                .font(.system(size: 20))
                       }
                       
                      ZStack{
                            Image("cake")
                             .resizable()
                             .aspectRatio(contentMode: .fit)
                             .frame(width: 150, height: 150)
                             .cornerRadius(10)
                            Text("SOBREMESAS")
                                .foregroundColor(.black)
                                .fontWeight(.heavy)
                                .font(.system(size: 20))
                   }
                       
               }
                
            }
            
        }
        
    }
}

struct NewRequest_Previews: PreviewProvider {
    static var previews: some View {
        NewRequest()
    }
}

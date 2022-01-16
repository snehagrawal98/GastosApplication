//
//  ShopProfile.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct ShopProfile: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
            VStack(content: {
                HStack(content: {
                    
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "arrow.left")
                            .font(.title)
                            .foregroundColor(.black)
                    })
                    .padding(.leading)
                    .navigationBarHidden(true)
                    .navigationBarTitle("")
                    .navigationBarBackButtonHidden(true)

                    Spacer()
                })
                
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .font(.title)
                    .foregroundColor(.green)
                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .zIndex(3)
                
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.orange)
                        .padding(.horizontal)
                    
                    VStack(content: {
                        
                        HStack(content: {
                            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                            
                            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                        })
                        .padding(.vertical)
                        
                        HStack(content: {
                            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                        })

                        HStack(content: {
                            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                        })
                        .padding(.vertical)
                        
                        HStack(content: {
                            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                        })
                        .padding(.vertical)
                        
                        HStack(content: {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star")
                        })
                        .padding(.vertical)


                    })
                }
                .offset(y: -30)
                
                ZStack(content: {
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.orange)
                        .padding(.horizontal)
                    
                    VStack(content: {
                        Text("Transaction Successfull")
                        
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Pay Again")
                                .foregroundColor(.black)
                        })
                        .padding()

                    })

                })
                .offset(y: -30)
            })
    }
}

struct ShopProfile_Previews: PreviewProvider {
    static var previews: some View {
        ShopProfile()
    }
}

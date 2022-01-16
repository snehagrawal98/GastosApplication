//
//  NewPayment.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct NewPayment: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var numberOrName: String = " "

    var body: some View {
        
        ZStack(content: {
            
            Color.green
            
            VStack(content: {
                
                HStack(content: {
                    
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "arrow.left")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding(.leading)
                            .padding(.top, Constants.saTop)
                    })
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .navigationTitle("")
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
                                        
                    Spacer()
                })
                
                Text("Make New Payment")
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.top, 50)
                    
                Image("Mark")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.black)
                    .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding(.top)
                
                ZStack(content: {
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.orange)
                    
                    VStack(content: {
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 250, height: 3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.top)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        TextField("Enter Mobile Number or Name", text: $numberOrName)
                            .frame(width: 250, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.white)
                            .cornerRadius(10)
                            .foregroundColor(.black)
                            .ignoresSafeArea(.keyboard, edges: .bottom)
                            
                        
                        Spacer()

                    })
                        
                })
                .padding(.top)
                
                Spacer()
            })
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        })
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct NewPayment_Previews: PreviewProvider {
    static var previews: some View {
        NewPayment()
    }
}

//
//  PaymentCard.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct PaymentCard: View {
    
    var body: some View {
        
        ZStack(content: {
            Rectangle()
                .foregroundColor(.blue)
                .overlay(Rectangle()
                            .frame(width: Constants.sW * 0.67, height: Constants.sH * 0.105, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.green)
                         , alignment: .bottom)
                .cornerRadius(25)
                .frame(width: Constants.sW * 0.67 ,height: Constants.sH * 0.21)
            
            VStack(content: {
                HStack(content: {
                    Image(systemName: "person.fill")
                        .foregroundColor(.black)
                        .padding(.leading)
                    
                    Spacer()
                    
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.trailing)
                        .padding(.top)
                })
                Spacer()
                HStack(content: {
                    Text("Mohan Sing")
                        .padding(.leading)
                        .padding(.bottom)
                        
                    Spacer()
                })
            })
            
        })
        .frame(width: Constants.sW * 0.67, height: Constants.sH * 0.21)

    }
}

struct PaymentCard_Previews: PreviewProvider {
    static var previews: some View {
        PaymentCard()
    }
}

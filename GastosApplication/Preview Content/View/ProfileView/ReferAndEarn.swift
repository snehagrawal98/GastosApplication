//
//  ReferAndEarn.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/19/21.
//

import SwiftUI

struct ReferAndEarn: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack {
            ZStack(content: {
                
                Path({ path in
                    path.move(to: CGPoint(x: 0, y: 0))
                    path.addLine(to: CGPoint(x: 0, y: Constants.sH * 0.3))
                    path.addQuadCurve(to: CGPoint(x: Constants.sW, y: Constants.sH * 0.3), control: CGPoint(x: Constants.sW / 2, y: Constants.sH * 0.55))
                    path.addLine(to: CGPoint(x: Constants.sW, y: 0))
                })
                .fill(Color.orange)
                
                VStack {
                    Image("Refer")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: Constants.sH * 0.28, height: Constants.sH * 0.26, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.top, Constants.saTop)
                    
                    Text("50 Coins")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                }
                
                
                VStack(content: {
                    
                    HStack(content: {
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "arrow.left")
                                .font(.title)
                                .foregroundColor(.black)
                                .padding(.leading)
                                .padding(.top)
                        })
                        .padding(.top, Constants.saTop)
                        
                        Spacer()

                    })
                    
                    Spacer()
                })
                
            })
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .frame(height: Constants.sH * 0.4)
            
            Spacer()
        }
    }
}

struct ReferAndEarn_Previews: PreviewProvider {
    static var previews: some View {
        ReferAndEarn()
    }
}

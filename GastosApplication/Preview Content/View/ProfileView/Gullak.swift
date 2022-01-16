//
//  Gullak.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/16/21.
//

import SwiftUI

struct Gullak: View {
    
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
                    Image("Gullak")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: Constants.sH * 0.28, height: Constants.sH * 0.28, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.top, Constants.saTop)
                    
                    Text("Total coins in Gullak")
                    
                    Text("300")
                    
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
            
            ScrollView( content: {
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .stroke(Color.gray, lineWidth: 0.5)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 3, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        .frame(height: Constants.sH * 0.1)
                        .padding(.horizontal)
                        
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Referral")
                            Text("Sent to Ajay")
                                .font(.subheadline)
                        }
                        .padding(.leading)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("+50")
                            Text("12/07/21 3:30 PM")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing)
                    }
                    .padding(.horizontal)
                    
                }
                .padding(.bottom)
                
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .stroke(Color.gray, lineWidth: 0.5)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 3, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        .frame(height: Constants.sH * 0.1)
                        .padding(.horizontal)
                        
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Card Activation")
                            Text("Spent to account")
                                .font(.subheadline)
                        }
                        .padding(.leading)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("-350")
                            Text("12/07/21 3:30 PM")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing)
                    }
                    .padding(.horizontal)
                    
                }
                .padding(.bottom)
                
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .stroke(Color.gray, lineWidth: 0.5)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 3, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        .frame(height: Constants.sH * 0.1)
                        .padding(.horizontal)
                        
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Elite Code")
                            Text("From employee")
                                .font(.subheadline)
                        }
                        .padding(.leading)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("+300")
                            Text("12/07/21 3:30 PM")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing)
                    }
                    .padding(.horizontal)
                    
                }
                .padding(.bottom)
                
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .stroke(Color.gray, lineWidth: 0.5)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 3, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        .frame(height: Constants.sH * 0.1)
                        .padding(.horizontal)
                        
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Referral")
                            Text("Sent to Ajay")
                                .font(.subheadline)
                        }
                        .padding(.leading)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("+50")
                            Text("12/07/21 3:30 PM")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing)
                    }
                    .padding(.horizontal)
                    
                }
                .padding(.bottom)
                
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .stroke(Color.gray, lineWidth: 0.5)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 3, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        .frame(height: Constants.sH * 0.1)
                        .padding(.horizontal)
                        
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Referral")
                            Text("Sent to Ajay")
                                .font(.subheadline)
                        }
                        .padding(.leading)
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("+50")
                            Text("12/07/21 3:30 PM")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing)
                    }
                    .padding(.horizontal)
                    
                }
                .padding(.bottom)
            })
            
            Spacer()
        }
    }
}

struct Gullak_Previews: PreviewProvider {
    static var previews: some View {
        Gullak()
    }
}
